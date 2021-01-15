using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace GUCera
{
    public partial class NewPromo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            profile.Text = Convert.ToString(Session["fullname"]);


        }



        protected void profile_Click(object sender, EventArgs e)
        {
           
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();

            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);

            String c = code.Text;
            DateTime issue = DateTime.Now;
            DateTime exp = DateTime.Parse(expiryDate.Text);
            Decimal disc = Decimal.Parse(Discount.Text);
            Int32 adminId = (Int32)Session["user"];

            SqlCommand createPromo = new SqlCommand("AdminCreatePromocode", conn);
            createPromo.CommandType = CommandType.StoredProcedure;


            createPromo.Parameters.Add(new SqlParameter("@code", c));
            createPromo.Parameters.Add(new SqlParameter("@isuueDate", issue));
            createPromo.Parameters.Add(new SqlParameter("@expiryDate", exp));
            createPromo.Parameters.Add(new SqlParameter("@discount", disc));
            createPromo.Parameters.Add(new SqlParameter("@adminId",adminId ));
            try
            {
                conn.Open();
                createPromo.ExecuteNonQuery();
                conn.Close();

                Response.Write("<font color= white >" + "Promocode successfully added");
            }
            catch
            {
                Response.Write("<font color= white >" + "Error Chech Data Added");

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
        
        
        protected void IssuePromotoStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssuePromoStudent.aspx");

        }


    }
}