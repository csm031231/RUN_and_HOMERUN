using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 마이페이지_회원정보수정 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            // 로그인되지 않은 경우, 로그인 페이지로 리디렉션 또는 다른 조치를 취할 수 있습니다.
            Response.Redirect("~/Sign in/로그인.aspx");
        }

        else
        {
            
            string connectionString = @"Server=localhost\SQLEXPRESS;Database=KBO;Trusted_Connection=True;";
            SqlConnection Con = new SqlConnection(connectionString);
            string name = "";
            string id = "";
            string phone = "";
            string adress = "";
            string email = "";

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "select * from userdb1 where id = '" + Session["id"] + "'";

            // SQL COMMAND 수행하기
            Con.Open();
            try
            {
                SqlDataReader reader = Cmd.ExecuteReader();
                while (reader.Read())
                {

                    if (reader["id"].ToString() != "")
                    {
                        id = reader["id"].ToString();
                        name = reader["name"].ToString();
                        adress = reader["adress"].ToString();
                        email = reader["email"].ToString();
                        phone = reader["phone"].ToString();
                        break;
                    }

                }
            }
            catch (Exception ex)
            {

            }
            Label9.Text = name;
            Label10.Text = id;
            Label11.Text = phone;
            Con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            Page.Validate();
            // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스를 지정
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=KBO";
            SqlConnection Con = new SqlConnection(connectionString);

            if (DropDownList1.SelectedIndex <= 0)
            {
                Label12.Text = "이메일 도메인을 선택해주세요.";
                return;
            }
            else
            {
                Label12.Text = "";
            }

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "UPDATE userdb1 SET password='" + TextBox1.Text + "', adress= '" +
                TextBox3.Text + "',  email= '" + TextBox4.Text + "' WHERE id ='" + Session["id"].ToString() + "'";
            Con.Open();

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                string script = "<script type='text/javascript'>alert('양식을 모두 채워주세요'); </script>";
                Response.Write(script);
            }
            else
            {
                try
                {
                    Session["adress"] = TextBox3.Text;
                    Cmd.ExecuteNonQuery();
                    string script = "<script type='text/javascript'>alert('회원정보 수정이 완료되었습니다.'); location.href='마이페이지.aspx';</script>";
                    Response.Write(script);
                    Response.End();
                }
                catch (Exception ex)
                {
                    
                }
            }
            Con.Close();
        }
  }