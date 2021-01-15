using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class HomeStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            profile.Text = Convert.ToString(Session["fullname"]);


        }

        

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProfile.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {

        }
        protected void AvCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("availableCourses.aspx");

        }

        protected void payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void enCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("EnrolledCourses.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            //WebSecurity.Logout();
            Response.Redirect("Login.aspx");
        }
    }
}