using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;

namespace Final_project
{
    public partial class account_settings : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";

        protected void Page_Load(object sender, EventArgs e)
        {
            //  Assign user name 
            if (Session["userid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                string emailer = Session["userid"].ToString();
                MySqlConnection mySql = new MySqlConnection(con);
                string conn = "SELECT `Name` FROM `users` WHERE `Email` = '" + emailer + "'";
                mySql.Open();
                MySqlDataReader alua;

                MySqlCommand sda = new MySqlCommand(conn, mySql);

                alua = sda.ExecuteReader();

                while (alua.Read())
                {
                    userid.InnerText = alua.GetString("Name");
                }
                userid1.InnerText = userid.InnerText;
                alua.Close();
                Session["Name"] = userid.InnerText;
            }

            //--- done name

        }
    }
}