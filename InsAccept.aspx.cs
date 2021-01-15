using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class InsAccept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
        }
        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Instructor.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsProfile.aspx");
        }

        protected void Ass_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);


            String cid = Convert.ToString((sender as LinkButton).CommandArgument);

            string req = "InsAss.aspx?id=" + cid;
            Response.Redirect(req);
        }

    }
}