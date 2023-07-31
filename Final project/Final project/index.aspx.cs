using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project
{
    public partial class index : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        //public string con = "Server=tcp:azuredbserver360.database.windows.net,1433;Initial Catalog=azuredb;Persist Security Info=False;User ID=raisulabir;Password=idLulKmNA6&amp;8;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        protected void Page_Load(object sender, EventArgs e)
        {

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


            //if (Session["userid"] != null )
            //{

            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}


        }
    }
}