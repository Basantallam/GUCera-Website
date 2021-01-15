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
    public partial class ApplyCourse : System.Web.UI.Page
    {
        string @cid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //int @cid = Convert.ToInt16(Request.QueryString["id"]);
            @cid = Request.QueryString["id"];

            SqlDataInstCourse.SelectParameters.Clear();
            SqlDataInstCourse.SelectParameters.Add("cid", @cid);
            // SqlDataInstCourse.SelectParameters.UpdateValues(cid, @cid);

            

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

        protected void ApplyCourse_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            int insid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            int cid1 = Convert.ToInt32(@cid);
            int sid = Convert.ToInt32(Session["user"]);
            SqlCommand enroll = new SqlCommand("enrollInCourse", conn);
            enroll.CommandType = CommandType.StoredProcedure;
            enroll.Parameters.Add(new SqlParameter("@sid", sid));
            enroll.Parameters.Add(new SqlParameter("@cid", cid1));
            enroll.Parameters.Add(new SqlParameter("@instr", insid));
            try
            {
                conn.Open();
                enroll.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Enrolled");
            }
            catch
            {
                Response.Write("<font color= red >" + "Cannot Enroll");

            }
        }
    }
}