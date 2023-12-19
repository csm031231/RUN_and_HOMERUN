using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 마이페이지_마이페이지 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Store/결제완료.aspx"); 
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/My Page/회원정보수정.aspx"); 
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/My Page/탈퇴.aspx"); 
    }
}