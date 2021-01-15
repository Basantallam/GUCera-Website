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
    public partial class InstructorRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String fname = FirstName.Text;
            String lname = LastName.Text;
            String pass = Password.Text;
            String email = Email.Text;
            String add = Address.Text;


            SqlCommand reg = new SqlCommand("InstructorRegister", conn);
            reg.CommandType = CommandType.StoredProcedure;
            reg.Parameters.Add(new SqlParameter("@first_name", fname));
            reg.Parameters.Add(new SqlParameter("@last_name", lname));
            reg.Parameters.Add(new SqlParameter("@password", pass));
            reg.Parameters.Add(new SqlParameter("@email", email));
            reg.Parameters.Add(new SqlParameter("@address", add));


           
            if (Male.Checked)
               reg.Parameters.Add(new SqlParameter("@gender", '1'));
            else
                reg.Parameters.Add(new SqlParameter("@gender", '0'));

           
            String Sql = "select @id=id from Users  where @email=email";

            SqlCommand identity = new SqlCommand(Sql, conn);
            SqlParameter id = identity.Parameters.Add("@id", SqlDbType.Int);
            identity.Parameters.Add(new SqlParameter("@email", email));


            id.Direction = ParameterDirection.Output;


            try
            {
                conn.Open();
                reg.ExecuteNonQuery();
                identity.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white>" + "Successful Register Your ID is " + id.Value + "<br><br>  Click logIn to log in \n");

            }
            catch
            {
                Response.Write("<font color= white >" + "Error Chech Data Added");

            }




        }

       
        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void StudentRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentRegister.aspx");
        }
    }
}