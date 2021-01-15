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
    public partial class ChoosePromo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profile.Text = Convert.ToString(Session["fullname"]);
            if (GridView2.Rows.Count == 0)
            {
                Response.Write(" <font color= white >" + " No more unissued promocodes to show.");
            }
        }



        protected void profile_Click(object sender, EventArgs e)
        {

        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Issue_Click(object sender, EventArgs e)
        {
            String id = Request.QueryString["id"];
            String promocode = Convert.ToString((sender as LinkButton).CommandArgument);


            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand issue = new SqlCommand("AdminIssuePromocodeToStudent", conn);
            issue.CommandType = CommandType.StoredProcedure;


            issue.Parameters.Add(new SqlParameter("@sid", Int32.Parse(id)));
            issue.Parameters.Add(new SqlParameter("@pid", promocode));

            try
            {
                conn.Open();
                issue.ExecuteNonQuery();
                conn.Close();
            }
            catch { }
            Response.Write("<font color= white >" + "Promocode " + promocode + " Issued Successfully to student with ID " + id);
            GridView2.DataBind();
            if (GridView2.Rows.Count == 0)
            {
                Response.Write("<br><br> <font color= white >" + " No more unissued promocodes to show.");
            }

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