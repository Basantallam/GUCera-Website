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
    public partial class AdminViewNonAcceptedCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);

        }


        protected void AcceptCourse_Click(object sender, EventArgs e)
        {


            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);


            SqlCommand Accept = new SqlCommand("AdminAcceptRejectCourse", conn);
            Accept.CommandType = CommandType.StoredProcedure;

            int id =(int) Session["user"];
            int cid = Int16.Parse(acceptCoursetb.Text);
            Accept.Parameters.Add(new SqlParameter("@adminid",  id));
            Accept.Parameters.Add(new SqlParameter("@courseId", cid));

            conn.Open();
            Accept.ExecuteNonQuery();
            conn.Close();   
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                Response.Write("<font color= white >" + "No Unaccepted Courses to Show.");
            }


        }

        protected void AdminViewAllCoursesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewAllCourses.aspx");
        }

    
        protected void NewPromo_Click(object sender, EventArgs e)
        {

            Response.Redirect("NewPromo.aspx");


        }
        protected void IssuePromotoStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssuePromoStudent.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void profile_Click(object sender, EventArgs e)
        {
            ;
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}