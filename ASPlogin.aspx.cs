using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASPlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {
        if (Membership.ValidateUser(Login1.UserName, Login1.Password))
        {
            Session["UserName"] = Login1.UserName;
            e.Authenticated = true;
            if (Roles.IsUserInRole("student"))
            { 
            Login1.DestinationPageUrl = "FlexBox.aspx";
            Session["role"] = "student";}

            else if (Roles.IsUserInRole("proff"))
                Login1.DestinationPageUrl = "Default.aspx";
        }
          
          

          
    //  }
    }
    //protected void Login1_OnLoggedIn(object sender, EventArgs e)
    //{
    //    {
    //        if (Roles.IsUserInRole(Login1.UserName, "student"))
    //        {Response.Write("Student");
    //            Session["role"] = "student";}
    //        else if (Roles.IsUserInRole(Login1.UserName, "proff"))
    //            Response.Redirect("ProfessorPage.aspx");
    //    }
    //}


   
}