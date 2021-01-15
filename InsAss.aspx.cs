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
    public partial class InsAss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);


            SqlCommand addAss = new SqlCommand("DefineAssignmentOfCourseOfCertianType", conn);
            addAss.CommandType = CommandType.StoredProcedure;
            addAss.Parameters.Add(new SqlParameter("@instId ", Session["user"]));
            addAss.Parameters.Add(new SqlParameter("@cid", Request.QueryString["id"]));
            addAss.Parameters.Add(new SqlParameter("@number", number.Text));
            addAss.Parameters.Add(new SqlParameter("@type", type.Text));
            addAss.Parameters.Add(new SqlParameter("@fullGrade", grade.Text));
            addAss.Parameters.Add(new SqlParameter("@weight", weight.Text));
            addAss.Parameters.Add(new SqlParameter("@deadline", deadline.Text));
            addAss.Parameters.Add(new SqlParameter("@content", content.Text));


            try
            {
                conn.Open();
                addAss.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Added Assignment");
            }
            catch
            {
                Response.Write("<font color= white >" + "Check Added Data ");
            }

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