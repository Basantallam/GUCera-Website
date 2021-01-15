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
    public partial class availableCourses : System.Web.UI.Page
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
        protected void ViewCourse_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String cname = Convert.ToString((sender as LinkButton).CommandArgument);
            String Sql = "select @id=id from Course  where @name=name";
            SqlCommand identity = new SqlCommand(Sql, conn);
            SqlParameter cid = identity.Parameters.Add("@id", SqlDbType.Int);
            identity.Parameters.Add(new SqlParameter("@name", cname));
            cid.Direction = ParameterDirection.Output;

            conn.Open();
            identity.ExecuteNonQuery();
            conn.Close();
            /*  int cidd = Convert.ToInt32(cid.Value);
              Response.Write(cid.Value);
              Response.Write(cidd);*/
            string req =  "ApplyCourse.aspx?id=" + cid.Value;
           Response.Redirect(req);
        }
    }
}