using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class InsAssStu : System.Web.UI.Page
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
        protected void grade_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string str = Convert.ToString((sender as LinkButton).CommandArgument);
            string[] arg = new string[4];
            arg = str.Split(';');
            int sid = Int32.Parse(arg[0]);
            int cid = Int32.Parse(arg[1]);
            int number = Int32.Parse(arg[2]);
            string type = arg[3];
            try { 
           
            decimal gr = Convert.ToDecimal(g.Text);
            SqlCommand grade = new SqlCommand("InstructorgradeAssignmentOfAStudent", conn);
            grade.CommandType = CommandType.StoredProcedure;
            grade.Parameters.Add(new SqlParameter("@cid", cid));
            grade.Parameters.Add(new SqlParameter("@sid", sid));
            grade.Parameters.Add(new SqlParameter("@instrId", Session["user"]));
            grade.Parameters.Add(new SqlParameter("@assignmentNumber", number));
            grade.Parameters.Add(new SqlParameter("@type", type));
            grade.Parameters.Add(new SqlParameter("@grade",gr ));

           
            
                conn.Open();
                grade.ExecuteNonQuery();
                conn.Close();
                
                    Response.Write("<font color= white >" + "Successfuly Added the grade");
                

            }
            catch
            {

                Response.Write("<font color= Red >" + "Error! Please enter the grade in the textbox bellow correctly ");

            }
           
            try {
                SqlCommand finalgrade = new SqlCommand("calculateFinalGrade", conn);
                finalgrade.CommandType = CommandType.StoredProcedure;
                finalgrade.Parameters.Add(new SqlParameter("@cid", cid));
                finalgrade.Parameters.Add(new SqlParameter("@sid", sid));
                finalgrade.Parameters.Add(new SqlParameter("@insId", Session["user"]));
                conn.Open();
                finalgrade.ExecuteNonQuery();
                conn.Close();
            }
            catch { }


        }
        protected void issue_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            DateTime now = DateTime.Now;

            string str = Convert.ToString((sender as LinkButton).CommandArgument);
            //  HtmlInputText s = GridAssignments.Rows[e.RowIndex].FindControl("grading") as HtmlInputText;
            string[] arg = new string[5];
            arg = str.Split(';');
            int sid = Int32.Parse(arg[0]);
            int cid = Int32.Parse(arg[1]);
            try
            {
                SqlCommand finalgrade = new SqlCommand("calculateFinalGrade", conn);
                finalgrade.CommandType = CommandType.StoredProcedure;
                finalgrade.Parameters.Add(new SqlParameter("@cid", cid));
                finalgrade.Parameters.Add(new SqlParameter("@sid", sid));
                finalgrade.Parameters.Add(new SqlParameter("@insId", Session["user"]));
                conn.Open();
                finalgrade.ExecuteNonQuery();
                conn.Close();
            }
            catch { }
            SqlCommand certificate = new SqlCommand("InstructorIssueCertificateToStudent", conn);
            certificate.CommandType = CommandType.StoredProcedure;
            certificate.Parameters.Add(new SqlParameter("@cid", cid));
            certificate.Parameters.Add(new SqlParameter("@sid", sid));
            certificate.Parameters.Add(new SqlParameter("@insId", Session["user"]));
            certificate.Parameters.Add(new SqlParameter("@issueDate", now));
            SqlParameter success = certificate.Parameters.Add("@success", SqlDbType.Int);

            success.Direction = ParameterDirection.Output;
            try
            {
                conn.Open();
                certificate.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "1")
                {
                    Response.Write("<font color= white >" + "Successfuly Certified");
                }
                else
                    Response.Write("<font color= Red >" + "Error! grade not enough");

            }
            catch
            {
                
                Response.Write("<font color= Red >" + "Error! ");

            }

        }
        protected void GU(object sender, EventArgs e)
        {

            HtmlInputText Matricula = GridAssignments.Rows[((GridViewUpdateEventArgs)e).RowIndex].FindControl("txtMat") as HtmlInputText;

            String grade = Matricula.Value;
            Response.Write(grade);
        }

        protected void GridAssignments_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = Convert.ToString((sender as LinkButton).CommandArgument);
            Response.Write("select" + str);
        }
        protected virtual void OnTextChanged(object sender,EventArgs e) {
            Server.HtmlEncode(g.Text);
        }
    }
}