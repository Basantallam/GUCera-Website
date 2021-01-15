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
    public partial class DetailEnrolled : System.Web.UI.Page
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
        protected void assi(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String cid = Convert.ToString((sender as LinkButton).CommandArgument);
            string req = "Assignment.aspx?id=" + cid;
            Response.Redirect(req);
        }
        
        protected void feedback(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String cid = Convert.ToString((sender as LinkButton).CommandArgument);
            string req = "Feedback.aspx?id=" + cid;
            Response.Redirect(req);
        }
        protected void cert(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String cid = Convert.ToString((sender as LinkButton).CommandArgument);
            string req = "Certificate.aspx?id=" + cid;
            Response.Redirect(req);
        }

        protected void pay_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int sid = Convert.ToInt32(Session["user"]);
             
            SqlCommand pay = new SqlCommand("payCourse", conn);
            pay.CommandType = CommandType.StoredProcedure;
            pay.Parameters.Add(new SqlParameter("@sid", sid));
            pay.Parameters.Add(new SqlParameter("@cid", Request.QueryString["id"]));
            try
            {
                conn.Open();
                pay.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Payed");
            }
            catch
            {
                Response.Write("<font color= white >" + "The course has been payed before");

            }
        }

        protected void grade_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand finalgrade = new SqlCommand("viewFinalGrade", conn);
            finalgrade.CommandType = CommandType.StoredProcedure;
            finalgrade.Parameters.Add(new SqlParameter("@cid", Request.QueryString["id"]));
            finalgrade.Parameters.Add(new SqlParameter("@sid", Session["user"]));
            
            SqlParameter g = finalgrade.Parameters.Add("@finalgrade", SqlDbType.Int);

            g.Direction = ParameterDirection.Output;
            
                conn.Open();
                finalgrade.ExecuteNonQuery();
                conn.Close();
            if (g.Value.ToString() != "")
                grade.Text = "Your Final Grade Is: " + g.Value.ToString();
            else
                grade.Text = "There is no added Grade yet";


        }
    }
}