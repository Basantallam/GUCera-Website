using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera2
{
    public partial class Certificate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["cid"]);
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


    }
}