using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class IssuePromoStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand listAllStudents = new SqlCommand("AdminListAllStudents", conn);
            listAllStudents.CommandType = CommandType.StoredProcedure;

            conn.Open();
            listAllStudents.ExecuteNonQuery();
            conn.Close();
            if (StudentList.Rows.Count == 0)
            {
                Response.Write("<font color= white >" + "no students to show. make sure you have students on your database");
            }

        }



        protected void profile_Click(object sender, EventArgs e)
        {
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void ChooseStudent_Click(object sender, EventArgs e)
        {
            String sid = Convert.ToString((sender as LinkButton).CommandArgument);
            Response.Redirect("ChoosePromo.aspx?id="+sid);
        }

        protected void AdminListAllStudents_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
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

      
    }
}