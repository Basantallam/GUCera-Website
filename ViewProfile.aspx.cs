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
    public partial class ViewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            profile.Text = Convert.ToString(Session["fullname"]);

            show();

        }



        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProfile.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeStudent.aspx");
        }

        private void show()
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand profile = new SqlCommand("viewMyProfile", conn);
            profile.CommandType = CommandType.StoredProcedure;

            
            profile.Parameters.Add(new SqlParameter("@id", Session["user"]));


            
            conn.Open();
            SqlDataReader rdr = profile.ExecuteReader(CommandBehavior.CloseConnection);
            rdr.Read();
            decimal gpa = rdr.GetDecimal(rdr.GetOrdinal("gpa"));
            int id = rdr.GetInt32(rdr.GetOrdinal("id"));
            String firstname = rdr.GetString(rdr.GetOrdinal("firstName"));
            String lastname = rdr.GetString(rdr.GetOrdinal("lastName"));
            String password = rdr.GetString(rdr.GetOrdinal("password"));
            Byte[] g = (byte[])rdr.GetSqlBinary(rdr.GetOrdinal("gender"));
            string gender;
            if (g[0].Equals(0)) gender = "Female";
            else gender = "Male";
            String email = rdr.GetString(rdr.GetOrdinal("email"));
            String address = rdr.GetString(rdr.GetOrdinal("address"));
            conn.Close();
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Passwrod");
            dt.Columns.Add("First Name");
            dt.Columns.Add("Last Name");
            dt.Columns.Add("Gender");
            dt.Columns.Add("GPA");
            dt.Columns.Add("Email");
            dt.Columns.Add("Address");
          

            DataRow dr = dt.NewRow();
            dr[0] = id;
            dr[1] = password;
            dr[2] = firstname;
            dr[3] = lastname;
            dr[4] = gender;
            dr[5] = gpa;
            dr[6] = email;
            dr[7] = address;
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void mobile_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand mobile = new SqlCommand("addMobile", conn);
            mobile.CommandType = CommandType.StoredProcedure;

            String number = mobileno.Text;

            mobile.Parameters.Add(new SqlParameter("@ID", Session["user"]));
            mobile.Parameters.Add(new SqlParameter("@mobile_number", number));

            try
            {
                conn.Open();
                mobile.ExecuteNonQuery();
                conn.Close();
                Gridmobile.DataBind();

                Response.Write("<font color= white >" + "Successfuly Added Your Mobile");
            }
            catch
            {
                Response.Write("<font color= white >" + "Error Check data");

            }
        }
    }
}