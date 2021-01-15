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
    public partial class InsAddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);


            SqlCommand addcourse = new SqlCommand("InstAddCourse", conn);
            addcourse.CommandType = CommandType.StoredProcedure;
            addcourse.Parameters.Add(new SqlParameter("@instructorid", Session["user"]));
            addcourse.Parameters.Add(new SqlParameter("@creditHours", hours.Text));
            addcourse.Parameters.Add(new SqlParameter("@name", name.Text));
            addcourse.Parameters.Add(new SqlParameter("@price", price.Text));

            try
            {
                conn.Open();
                addcourse.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Added Course");
            }
            catch
            {
                Response.Write("<font color= white >" + " Error Check data");
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