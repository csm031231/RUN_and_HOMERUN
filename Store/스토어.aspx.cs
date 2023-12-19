using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class 스토어 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int sum = 0;
        int value_1 = 0, value_2 = 0, value_3 = 0, value_4 = 0, value_5 = 0, value_6 = 0, value_7 = 0;
        int value_8 = 0, value_9 = 0, value_10 = 0, value_11 = 0, value_12 = 0, value_13 = 0, value_14 = 0, value_15 = 0;

        if (CheckBoxList1.SelectedIndex > -1)
        {
            value_1 = int.Parse(CheckBoxList1.SelectedItem.Value);
        }
        if (CheckBoxList2.SelectedIndex > -1)
        {
            value_2 = int.Parse(CheckBoxList2.SelectedItem.Value);
        }
        if (CheckBoxList3.SelectedIndex > -1)
        {
            value_3 = int.Parse(CheckBoxList3.SelectedItem.Value);
        }
        if (CheckBoxList4.SelectedIndex > -1)
        {
            value_4 = int.Parse(CheckBoxList4.SelectedItem.Value);
        }
        if (CheckBoxList5.SelectedIndex > -1)
        {
            value_5 = int.Parse(CheckBoxList5.SelectedItem.Value);
        }
        if (CheckBoxList6.SelectedIndex > -1)
        {
            value_6 = int.Parse(CheckBoxList6.SelectedItem.Value);
        }
        if (CheckBoxList7.SelectedIndex > -1)
        {
            value_7 = int.Parse(CheckBoxList7.SelectedItem.Value);
        }
        if (CheckBoxList8.SelectedIndex > -1)
        {
            value_8 = int.Parse(CheckBoxList8.SelectedItem.Value);
        }
        if (CheckBoxList9.SelectedIndex > -1)
        {
            value_9 = int.Parse(CheckBoxList9.SelectedItem.Value);
        }
        if (CheckBoxList10.SelectedIndex > -1)
        {
            value_10 = int.Parse(CheckBoxList10.SelectedItem.Value);
        }
        if (CheckBoxList11.SelectedIndex > -1)
        {
            value_11 = int.Parse(CheckBoxList11.SelectedItem.Value);
        }
        if (CheckBoxList12.SelectedIndex > -1)
        {
            value_12 = int.Parse(CheckBoxList12.SelectedItem.Value);
        }
        if (CheckBoxList13.SelectedIndex > -1)
        {
            value_13 = int.Parse(CheckBoxList13.SelectedItem.Value);
        }
        if (CheckBoxList14.SelectedIndex > -1)
        {
            value_14 = int.Parse(CheckBoxList14.SelectedItem.Value);
        }
        if (CheckBoxList15.SelectedIndex > -1)
        {
            value_15 = int.Parse(CheckBoxList15.SelectedItem.Value);
        }


        sum = value_1 + value_2 + value_3 + value_4 + value_5 + value_6 + value_7 + value_8 + value_9 + value_10 + value_11 + value_12 + value_13 + value_14 + value_15;

        TextBox1.Text = sum.ToString();
        Label2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label2.Text = "빈칸은 필수입니다.";

        }
        else
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=KBO";
            SqlConnection Con = new SqlConnection(connectionString); 

            SqlCommand Cmd = new SqlCommand(); 
            Cmd.Connection = Con;
            Cmd.CommandText =
                "INSERT INTO userdb3 (id, price)  VALUES "
              + "( '" + TextBox2.Text + "' ,  " + " '" + TextBox1.Text + "' ) ";

            Con.Open();


            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("결제창.aspx");
            Con.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=KBO";
        using (SqlConnection Con = new SqlConnection(connectionString))
        {
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "SELECT * FROM userdb1 WHERE id = @userdb";
            Cmd.Parameters.AddWithValue("@userdb", TextBox2.Text);

            Con.Open();

            SqlDataReader reader = Cmd.ExecuteReader();
            if (reader.Read())
            {
                Label3.Text = "환영합니다 " + reader["name"] + "님, 스토어입니다";
            }
            else
            {
                Label3.Text = "해당 사용자를 찾을 수 없습니다.";
            }
        }

    }
}
                
        