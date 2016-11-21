using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Paperless_Hospital.Models;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Paperless_Hospital.Account
{
    public partial class Register : Page
    {
        private readonly string dbconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            string username = Email.Text;
            string hname = hospital_name.Text;
            string splan = Plan.Text;
            string add1 = Address1.Text;
            string add2 = Address2.Text;
            string stateA = State.Text;
            string countryA = Country.Text;
            string pwd = Password.Text;

            SqlConnection con = new SqlConnection(dbconn);
            SqlCommand com = new SqlCommand();

            try
            {
                //SqlCommand com = new SqlCommand("INSERT INTO RegisteredHospitals VALUES (username, hname, add1, add2, stateA, countryA, pwd)",con);
                con.Open();

                com.Connection = con;

                com.CommandType = CommandType.StoredProcedure; //database update means
                com.CommandText = "paphInsertHospital"; //Stored procedure name

                com.Parameters.Add("@email", SqlDbType.VarChar, 100).Value = username;
                com.Parameters.Add("@hospital_name", SqlDbType.VarChar, 250).Value = hname;
                com.Parameters.Add("@selected_plan", SqlDbType.VarChar, 100).Value = splan;
                com.Parameters.Add("@address_one", SqlDbType.VarChar, 250).Value = add1;
                com.Parameters.Add("@address_two", SqlDbType.VarChar, 250).Value = add2;
                com.Parameters.Add("@state", SqlDbType.VarChar, 100).Value = stateA;
                com.Parameters.Add("@country", SqlDbType.VarChar, 100).Value = countryA;
                com.Parameters.Add("@password", SqlDbType.VarChar, 250).Value = pwd;

                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}