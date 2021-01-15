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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();

            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);
            int id = Int16.Parse(username.Text);

            String pass = password.Text;

            SqlCommand loginproc = new SqlCommand("userLogin", conn);
            loginproc.CommandType = CommandType.StoredProcedure;
            loginproc.Parameters.Add(new SqlParameter("@id", id));
            loginproc.Parameters.Add(new SqlParameter("@password", pass));

            SqlParameter success = loginproc.Parameters.Add("@success", SqlDbType.Int);
            SqlParameter type = loginproc.Parameters.Add("@type", SqlDbType.Int);

            success.Direction = ParameterDirection.Output;
            type.Direction = ParameterDirection.Output;

            conn.Open();
            loginproc.ExecuteNonQuery();
            conn.Close();

            if (success.Value.ToString() == "1")
            {
                Session["user"] = id;
                String Sql = "select @fname=firstName , @lname=lastName from Users  where @id=id";
                SqlCommand identity = new SqlCommand(Sql, conn);
                SqlParameter Fname = identity.Parameters.Add("@fname", SqlDbType.VarChar, 22);
                SqlParameter Lname = identity.Parameters.Add("@lname", SqlDbType.VarChar, 22);
                identity.Parameters.Add(new SqlParameter("@id", id));
                Fname.Direction = ParameterDirection.Output;
                Lname.Direction = ParameterDirection.Output;
                conn.Open();
                identity.ExecuteNonQuery();
                conn.Close();
                String full =  Fname.Value + " " + Lname.Value;
                Session["fullname"]=full;


                if (type.Value.ToString() == "2")
                {
                    Response.Redirect("HomeStudent.aspx");
                }
                else if (type.Value.ToString() == "1")
                {
                    Response.Redirect("Admin.aspx");
                }
                else if (type.Value.ToString() == "0")
                {
                    Response.Redirect("Instructor.aspx");
                }
            }
            else
            {
                Response.Write("<font color= white >" + "Incorrect Username or Password");
            }
        }
        protected void StudentRegister_Click(object sender, EventArgs e)
        {

            Response.Redirect("StudentRegister.aspx");
        }
        protected void InstructorRegister_Click(object sender, EventArgs e)
        {

            Response.Redirect("InstructorRegister.aspx");
        }

      
    }
}