﻿using System;
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
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            string name = Email.Text;
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