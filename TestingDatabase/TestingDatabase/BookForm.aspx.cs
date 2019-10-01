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
    public partial class BookForm : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "insert into Book values('" + txtBookTitle.Text +"','"+txtAuthor.Text +"','"+txtISBN.Text+ "','" + txtPublishedDate.Text + "','" + publisherDropDown.SelectedValue + "','" + categoryDropDown.SelectedValue + "','" + txtPageCount.Text + "','" + txtPrice.Text + "')";
            command.ExecuteNonQuery();
            connection.Close();

            Response.Redirect("ListView.aspx");

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

    }
}