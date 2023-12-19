using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 구단정보 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NC정보.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("롯데정보.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SSG정보.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("LG정보.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("KT정보.aspx");
    }
}