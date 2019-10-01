using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TestingDatabase
{
    public partial class SearchForm : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchTitle_Click(object sender, EventArgs e)
        {
            using (connection)
            {

                String query = "SELECT * FROM Book WHERE Book_Title = '" + txtSearchTitle.Text + "'";
                SqlCommand cmd = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

                //Close connection and clear text
                connection.Close();
                txtSearchTitle.Text = "";
            }
        }
        protected void btnSearchPrice_Click(object sender, EventArgs e)
        {
            using (connection)
            {
                //Search by books priced higher than the enter user value
                String query = "SELECT * FROM Book WHERE Price >= '" + txtSearchPrice.Text + "'";
                SqlCommand cmd = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

                connection.Close();
                txtSearchPrice.Text = "";
            }
        }

        protected void btnSearchCategory_Click(object sender, EventArgs e)
        {
            using (connection)
            {

                String query = "SELECT * FROM Book WHERE Category = '" + searchCategory.SelectedValue + "'";
                SqlCommand cmd = new SqlCommand(query, connection);


                connection.Open();


                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

                connection.Close();
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnListView_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListView.aspx");
        }


    }
}