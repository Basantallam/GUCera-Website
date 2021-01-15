using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class Instructor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void AdCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsAddCourse.aspx");
        }

        protected void viewCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsViewCourse.aspx");
        }
        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Instructor.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsProfile.aspx");
        }

        

        
    }
}