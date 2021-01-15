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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            profile.Text = Convert.ToString(Session["fullname"]);


        }



        protected void profile_Click(object sender, EventArgs e)
        {
            
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeStudent.aspx");
        }
        protected void AdminViewAllCoursesButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("AdminViewAllCourses.aspx");


        }

        protected void AdminViewNonAcceptedCoursesButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("AdminViewNonAcceptedCourses.aspx");


        } protected void NewPromo_Click(object sender, EventArgs e)
        {

            Response.Redirect("NewPromo.aspx");


        } 
        protected void IssuePromotoStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssuePromoStudent.aspx");

        }

        protected void mobile_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand mobile = new SqlCommand("addMobile", conn);
            mobile.CommandType = CommandType.StoredProcedure;

            String number = mobileno.Text;

            mobile.Parameters.Add(new SqlParameter("@ID", Session["user"]));
            mobile.Parameters.Add(new SqlParameter("@mobile_number", number));
            try
            {
                conn.Open();
                mobile.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Added Your Mobile");
            }
            catch
            {
                Response.Write("<font color= white >" + "Error Check data");

            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
