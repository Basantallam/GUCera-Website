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
    public partial class Assignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["id"]);

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

        protected void submit(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

           // using (SqlConnection conn = new SqlConnection(connStr)) 
           //string productId = Request.QueryString["ID"];

            string[] arg = new string[3];
            arg = ((sender as LinkButton).CommandArgument).ToString().Split(';');
            int cid = Int32.Parse(arg[0]);
            int number = Int32.Parse(arg[1]);
            string type = arg[2];
            int sid = Convert.ToInt32(Session["user"]);
            //String Sql = "select @id=id from Assignment  where @assignnumber = number and @assignType = type and @cid = cid";


            SqlCommand identity = new SqlCommand("submitAssign", conn);
            identity.CommandType = CommandType.StoredProcedure;
            identity.Parameters.Add(new SqlParameter("@assignType", type));
            identity.Parameters.Add(new SqlParameter("@assignnumber", number));
            identity.Parameters.Add(new SqlParameter("@sid", sid));
            identity.Parameters.Add(new SqlParameter("@cid", cid));
            try
            {
                conn.Open();
                identity.ExecuteNonQuery();
                conn.Close();
                Response.Write("<font color= white >" + "Successfuly Submitted");
            }
            catch
            {
                Response.Write("<font color= Red >" + "Error! Already Submitted");

            }





        }
        protected void grade(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string[] arg = new string[3];
            arg = ((sender as LinkButton).CommandArgument).ToString().Split(';');
            int cid = Int32.Parse(arg[0]);
            int number = Int32.Parse(arg[1]);
            string type = arg[2];
            int sid = Convert.ToInt32(Session["user"]);
            SqlCommand identity = new SqlCommand("viewAssignGrades", conn);
            identity.CommandType = CommandType.StoredProcedure;
            identity.Parameters.Add(new SqlParameter("@assignnumber", number));
            identity.Parameters.Add(new SqlParameter("@assignType", type));
            identity.Parameters.Add(new SqlParameter("@cid", cid));
            identity.Parameters.Add(new SqlParameter("@sid", sid));
            SqlParameter grade = identity.Parameters.Add("@assignGrade", SqlDbType.Int);
            grade.Direction = ParameterDirection.Output;
            conn.Open();
            identity.ExecuteNonQuery();
            conn.Close();
            //Response.Write("Grade for this assignment: " + Convert.ToString(grade));
            //Label l = new Label();
            if ((Convert.ToString(grade.Value)) == "")
            {
                Response.Write("<font color= white >" + "No Grade Yet");
                //l.Text = "No Grade";
            }
            else
            {
                String str = "<font color= white >" + "Grade for this assignment: " + (Convert.ToString(grade.Value));
                Response.Write(str);
                //l.Text = str;
            }

            //PlaceHolder1.Controls.Add(l);
        }



    }
}