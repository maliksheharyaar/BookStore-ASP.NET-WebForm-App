using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestingDatabase
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookForm.aspx");
        }
        protected void btnListView_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListView.aspx");
        }


        protected void btnCustomSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchForm.aspx");
        }
    }
}