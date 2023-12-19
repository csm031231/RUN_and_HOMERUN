using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.SqlClient;
using System.Web.Security;

public partial class 로그인 : System.Web.UI.Page
{
    static string prevPage = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            string id = TextBox1.Text;
            string pw = TextBox2.Text;
            bool isUser = false;

            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=KBO";
            using (SqlConnection Con = new SqlConnection(connectionString))
            {
                using (SqlCommand Cmd = new SqlCommand())
                {
                    Cmd.Connection = Con;
                    Cmd.CommandText = "SELECT * FROM userdb1 WHERE id = @id AND password = @pw";
                    Cmd.Parameters.AddWithValue("@id", id);
                    Cmd.Parameters.AddWithValue("@pw", pw);

                    Con.Open();
                    try
                    {
                        using (SqlDataReader reader = Cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                if (reader["password"] != DBNull.Value && !string.IsNullOrEmpty(reader["password"].ToString()))
                                {
                                    isUser = true;
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        // 에러 메시지 출력
                        Label3.Text = "에러 발생: " + ex.Message;
                        return; // 에러 발생 시 더 이상 진행하지 않음
                    }

                    if (isUser)
                    {
                        FormsAuthentication.SetAuthCookie(id, false);
                        Session["id"] = id;
                        if (prevPage == null || prevPage.IndexOf("회원가입Page.aspx") != 0)
                        {
                            Response.Redirect("/home.aspx");
                        }
                        else
                        {
                            Response.Redirect(prevPage);
                        }
                    }
                    else
                    {
                        // 로그인 정보가 잘못되었습니다.
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", "<script language=JavaScript>alert('로그인 정보가 잘못되었거나 회원이 아닙니다.');</script>");
                    }
                }
            }
        }
    }
}