using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 마이페이지_탈퇴 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=KBO";
        SqlConnection con = null;
        SqlCommand cmd = null;

        try
        {
            con = new SqlConnection(connectionString);
            cmd = new SqlCommand();

            cmd.Connection = con;

            // SELECT 문을 사용하여 계정이 존재하는지 확인
            cmd.CommandText = "SELECT COUNT(*) FROM userdb1 WHERE id = @id AND password = @password";
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);


            // SQL COMMAND 수행하기
            con.Open();
            int accountCount = (int)cmd.ExecuteScalar();

            // 이미 탈퇴된 아이디에 대한 처리
            if (accountCount == 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "alert", "<script language=JavaScript>alert('이미 탈퇴된 계정이거나 올바른 계정인지 확인하십시오.'); window.location.href='/home.aspx';</script>");
            }
            else
            {
                // DELETE 문을 사용하여 레코드 삭제
                cmd.CommandText = "DELETE FROM userdb1 WHERE id = @id AND password = @password";

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // 계정이 삭제되면 로그아웃 수행
                    FormsAuthentication.SignOut();

                    ClientScript.RegisterStartupScript(typeof(Page), "alert", "<script language=JavaScript>alert('계정이 성공적으로 삭제되었습니다.');window.location.href='탈퇴완료.aspx';</script>");

                }
                else
                {
                    // 탈퇴가 성공하면 다른 페이지로 리다이렉트
                    Response.Redirect("탈퇴완료.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "alert", "<script language=JavaScript>alert('올바른 계정인지 확인하십시오.');</script>");
            // 오류 처리 : ClientScript.RegisterStartupScript(typeof(Page), "alert", "<script language=JavaScript>alert('비정상적인 접근입니다. {ex.Message}');</script>");
        }

        finally
        {
            // 수동으로 리소스 해제
            if (cmd != null)
            {
                cmd.Dispose();
            }

            if (con != null)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Dispose();
            }
        }
    }
}