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
    public partial class Payment : System.Web.UI.Page
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

        protected void credit_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

           
            SqlCommand creditcard = new SqlCommand("addCreditCard", conn);
            creditcard.CommandType = CommandType.StoredProcedure;
            creditcard.Parameters.Add(new SqlParameter("@sid", Session["user"]));
            creditcard.Parameters.Add(new SqlParameter("@number", number.Text));
            creditcard.Parameters.Add(new SqlParameter("@cardHolderName", holdername.Text));
            creditcard.Parameters.Add(new SqlParameter("@expiryDate", expdate.Text));
            creditcard.Parameters.Add(new SqlParameter("@cvv", cvv.Text));
            try
            {
                conn.Open();
                creditcard.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Added Credit Card");
            }
            catch
            {
                Response.Write("<font color= red >" + "Error Chech Data Added");

            }
        }

        protected void promo_Click(object sender, EventArgs e)
        {
            GridPromo.Visible=true;
        }
    }
}