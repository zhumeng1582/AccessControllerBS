using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AccessControllerBS.RelationManage
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmint_Click(object sender, EventArgs e)
        {
            string userName = TextBoxUserName.Text.Trim();
            string userPwd = TextBoxUserPwd.Text.Trim();

            HttpCookie cookie = new HttpCookie("userinfo");
            cookie.Values["name"] = userName;
            cookie.Values["password"] = userPwd;
            cookie.Expires = DateTime.MaxValue;
            Response.Cookies.Add(cookie);

            string url = "~/Main/main.aspx";
            
            Response.Redirect(url);
            //Server.Transfer(url); 
        }
    }
}