using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_register
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register(object sender, EventArgs e)
        {
            string username = user.Text;
            string password = pass.Text;
            string firstname = fn.Text;
            string lastname = ln.Text;
            string r = Db(username, password, firstname, lastname);
            if (r== "Data inserted successfully!")
            {
                Response.Redirect($"Default.aspx");
            }
        }
        public string Db(string username, string password, string firstname, string lastname)
        {
            string connectionString = "Data Source=DESKTOP-SB056D8\\SQLEXPRESS;Initial Catalog=login;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    string insertQuery = "INSERT INTO users VALUES (@Username, @Password,@fn,@ln)";
                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Password", password);
                        command.Parameters.AddWithValue("@fn", firstname);
                        command.Parameters.AddWithValue("@ln", lastname);
                        command.ExecuteNonQuery();
                        return "Data inserted successfully!";
                    }
                }
                catch (SqlException ex)
                {
                    Console.WriteLine("SQL Error: " + ex.Message);
                    return ex.Message;
                }
            }
        }
    }
}