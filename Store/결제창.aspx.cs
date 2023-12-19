using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;

public partial class 스토어_결제창 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "" || TextBox2.Text == "" || TextBox1.Text == "")
        {
            Label7.Text = "빈칸에 정보을 입력하세요.";
        }
        else
        {
            // 1. XML 파일 열기
            string fn = Server.MapPath("~/App_Data/결제.xml");
            XmlDocument doc = new XmlDocument();
            doc.Load(fn);
            // 2. guest 노드 생성하고, 루트 노드에 추가
            XmlNode root = doc.DocumentElement;
            XmlNode guestnode = doc.CreateElement("guest");
            root.AppendChild(guestnode);

            // 3. child 노드의 속성을 생성하고, guest 노드에 추가
            XmlAttribute name;
            name = doc.CreateAttribute("name");
            name.Value = TextBox1.Text;
            guestnode.Attributes.Append(name);

            XmlAttribute id;
            id = doc.CreateAttribute("id");
            id.Value = TextBox2.Text;
            guestnode.Attributes.Append(id);

            XmlAttribute price;
            price = doc.CreateAttribute("price");
            price.Value = TextBox4.Text;
            guestnode.Attributes.Append(price);

            XmlAttribute adress;
            adress = doc.CreateAttribute("adress");
            adress.Value = TextBox3.Text;
            guestnode.Attributes.Append(adress);

            XmlAttribute date;
            date = doc.CreateAttribute("date");
            date.Value = DateTime.Now.ToString();
            guestnode.Attributes.Append(date);

            // 5. XML 파일에 저장
            doc.Save(fn); doc = null;
            // 6. 리스트 페이지로 이동
            Response.Redirect("결제완료.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=KBO";

        using (SqlConnection Con = new SqlConnection(connectionString))
        {
            Con.Open();


            using (SqlCommand Cmd = new SqlCommand())
            {
                Cmd.Connection = Con;

                Cmd.CommandText = "SELECT * FROM userdb3 WHERE id = '" + TextBox2.Text + "'";


                using (SqlDataReader reader = Cmd.ExecuteReader())
                {
                    TextBox3.Text = "";

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            TableRow r = new TableRow();

                            TableCell c1 = new TableCell();
                            c1.Controls.Add(new LiteralControl(reader["price"] + "원"));
                            r.Cells.Add(c1);

                            Table1.Rows.Add(r);


                            TextBox4.Text = reader["price"].ToString();
                        }
                        Label6.Text = "";
                        Label7.Text = "";
                        
                    }
                    else
                    {
                        Label6.Text = "해당 사용자를 찾을 수 없습니다.";
                        TextBox3.Text = "";
                        TextBox4.Text = "";

                    }
                }
            }
            using (SqlCommand Cmd = new SqlCommand())
            {
                Cmd.Connection = Con;
                Cmd.CommandText = "SELECT * FROM userdb1 WHERE id = '" + TextBox2.Text + "'";
                using (SqlDataReader reader = Cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        TextBox3.Text = reader["adress"].ToString();
                    }
                }
            }
        }
    }
}
