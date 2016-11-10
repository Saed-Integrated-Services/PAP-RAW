using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Paperless_Hospital.Account
{
    public partial class RegisterAdmin : System.Web.UI.Page
    {
    //    protected void Page_Load(object sender, EventArgs e)
    //    {

    //    }

        protected void CreateAdmin_Click(object sender, EventArgs e)
        {
            string name = username.Text;
            string stateA = State.Text;
            string countryA = Country.Text;
            string pwd = Password.Text;

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog = PAPH_ATHM;Trusted_connection=True;");
            SqlCommand com = new SqlCommand();

            try
            {
                con.Open();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure; //database update means
                com.CommandText = ""; //Stored procedure name

                com.Parameters.Add(""); // do this for all the values that would need to be updated in the db

                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                con.Close();
            }
        }
    }
}