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
    public partial class sign_up : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {
            validmail.Visible = false;
            confirmed.Visible = false;
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            string mySql = " INSERT INTO `users`(`Name`, `Email`, `Password`) VALUES ('" + name.Value.ToString() + "','" + email.Value.ToString() + "','" + pass.Value.ToString() + "')";

            conn.Open();
            MySqlCommand sdaa = new MySqlCommand(mySql, conn);
            try
            {
                sdaa.ExecuteNonQuery();
                confirmed.Visible = true;
                conn.Close();
            }
            catch (Exception)
            {
                validmail.Visible = true;


            }


        }
    }
}