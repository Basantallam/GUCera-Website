using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GUCera2
{
    public partial class Feedback : System.Web.UI.Page
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
            Response.Redirect("HomeStudent.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int cid = Convert.ToInt32(Request.QueryString["id"]);
            int sid = Convert.ToInt32(Session["user"]);
            String feed = Text1.Text;
            
            SqlCommand identity = new SqlCommand("addFeedback", conn);
            identity.CommandType = CommandType.StoredProcedure;
            identity.Parameters.Add(new SqlParameter("@comment", feed));
            identity.Parameters.Add(new SqlParameter("@cid",  cid));
            identity.Parameters.Add(new SqlParameter("@sid",  sid));

            try
            {
                conn.Open();
                identity.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Feedback Submitted!");
            }
            catch
            {
                Response.Write("<font color= red >" + "Cannot Submit");

            }

        }
    }
}