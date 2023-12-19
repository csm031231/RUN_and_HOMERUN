using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 회원가입 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Validate();

        // 입력된 값들 가져오기
        string name = TextBox1.Text;
        string id = TextBox2.Text;
        string password = TextBox3.Text;
        string phone = TextBox7.Text;
        string address = TextBox5.Text;

        if (DropDownList1.SelectedIndex <= 0) // 0 -> 선택되지 않은 상태
        {
            Label10.Text = "이메일 주소를 선택해주세요.";
            return;
        }
        else
        {
            Label10.Text = " ";
        }
        string email = TextBox6.Text + DropDownList1.SelectedItem.Value;

        if (!CheckBox1.Checked || !CheckBox2.Checked)
        {
            Label11.Text = ("회원가입을 위해서는 약관에 동의해야 합니다.");
            return;
        }
        else
        {
            Label11.Text = " ";
        }

        SqlConnection Con = new SqlConnection(@"Server=(local)\SQLExpress;Integrated Security=true;Database=KBO");
        try
        {
            // SQL COMMAND OBJECT를 만들고 SQL COMMAND에 넣기 
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;

            // 중복검사를 위한 SQL 쿼리 실행
            Cmd.CommandText = "SELECT * FROM userdb1 WHERE id = '" + id + "' ";
            Con.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            // 중복 id 검사
            if (reader.Read())
            {
                Label9.Text = "중복된 id 입니다.";
            }
            else
            {
                reader.Close();
                // 중복이 없으면 회원가입 처리(이름, 아이디, 비밀번호, 전화번호, 주소, 이메일 values db에 추가하기)
                Cmd.CommandText = "INSERT INTO userdb1 (name, id, password, phone, adress, email) VALUES" +
                    "( '" + TextBox1.Text + "' ,  " + " '" + TextBox2.Text + "' ,  " + " '" + TextBox3.Text + "' ,  "
                    + " '" + TextBox7.Text + "' ,  '" + TextBox5.Text + "',  " + " '" + TextBox6.Text + DropDownList1.SelectedItem.Value + "' ) ";
                Cmd.ExecuteNonQuery();

                Label9.Text = "사용 가능한 id 입니다.";

                Response.Redirect("~/Sign in/로그인.aspx");
            }

        }
        catch (Exception ex)
        {
            // 예외 처리 코드를 추가하세요
        }
        finally
        {
            Con.Close();
        }
    }
}