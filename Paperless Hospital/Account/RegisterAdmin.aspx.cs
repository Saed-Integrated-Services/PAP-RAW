using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Paperless_Hospital.Account
{
    public partial class RegisterAdmin : System.Web.UI.Page
    {
        private readonly string dbconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void CreateAdmin_Click(object sender, EventArgs e)
        {
            string name = username.Text;
            string stateA = State.Text;
            string countryA = Country.Text;
            string pwd = Password.Text;

            SqlConnection con = new SqlConnection(dbconn);

            try
            {
                SqlCommand com = new SqlCommand();
                con.Open();
               

                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}