using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class AdminViewAllCourses :System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
            if (GridView1.Rows.Count == 0)
            {
                Response.Write("<font color= white >" + "no courses to show.");
            }

           


        }



        protected void profile_Click(object sender, EventArgs e)
        {
            ;
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AdminViewAllCoursesButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("AdminViewAllCourses.aspx");


        }

        protected void AdminViewNonAcceptedCoursesButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("AdminViewNonAcceptedCourses.aspx");


        }
        protected void NewPromo_Click(object sender, EventArgs e)
        {

            Response.Redirect("NewPromo.aspx");


        }
        protected void IssuePromotoStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssuePromoStudent.aspx");

        }
    }

   
    }
