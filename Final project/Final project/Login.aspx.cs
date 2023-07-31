using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project
{
    public partial class Login : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {

            errore.Visible = false;

        }

        protected void loginn_Click(object sender, EventArgs e)
        {
            MySqlConnection mySql = new MySqlConnection(con);
            string conn = " SELECT COUNT(*) FROM `users` WHERE `Email` = '" + email.Value.ToString() + "' && `Password` = '" + pass.Value.ToString() + "'";

            mySql.Open();
            MySqlCommand sdaa = new MySqlCommand(conn, mySql);


            int logger = Convert.ToInt32(sdaa.ExecuteScalar());
            if (logger != 0)
            {
                mySql.Close();
                Session["userid"] = email.Value.ToString();
                Session.Timeout = 1;
                Response.Redirect("index.aspx");


            }
            else
            {
                errore.Visible = true;
                mySql.Close();
            }


        }
    }
}