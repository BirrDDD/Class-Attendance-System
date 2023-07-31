using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using OfficeOpenXml;

namespace Final_project
{
    public partial class student_attendence : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (attendsubmit.Visible)
            {
                attendsubmit.Visible = false;
            }
            if (ExportToExcelButton.Visible)
            {
                ExportToExcelButton.Visible = false;
            }
            if (IsPostBack)
            {
                DataTable dt = FetchDataFromDatabase();
                //AddDataTableToPanel(dt);
            }

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



            if (!IsPostBack)
            {
                MySqlConnection conn = new MySqlConnection(con);
                string mysql = "SELECT `Course`  FROM `course`";
                MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
                conn.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcomm);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                courselist.DataSource = dt;
                courselist.DataBind();
                courselist.DataTextField = "Course";
                courselist.DataValueField = "Course";
                courselist.DataBind();
            }



        }

        private DataTable FetchDataFromDatabase()
        {
            string connectionString = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
            string query = "SELECT * FROM `" + courselist.SelectedItem.Text + "`"; ;

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, connection);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable;
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (checkaaa.Items.Count != 0)
            {
                checkaaa.Items.Clear();
            }

            MySqlConnection conn = new MySqlConnection(con);
            string mysql = "SELECT *  FROM `" + courselist.SelectedItem.Text + "`";
            MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
            conn.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            //checkaaa.DataSource = dt.Rows;
            if (dt.Columns.Contains("\"" + daypicked.Value.ToString() + "\""))
            {
                foreach (DataRow dr in dt.Rows)
                {
                    string itemText = dr["StudentRoll"].ToString() + "    ||    " + dr["StudentName"].ToString();
                    string itemValue = dr["StudentRoll"].ToString();

                    ListItem listItem = new ListItem(itemText, itemValue);


                    if (dr["\"" + daypicked.Value.ToString() + "\" "].ToString() == "P")
                    {
                        listItem.Enabled = true;
                    }
                    else
                    {
                        listItem.Enabled = false;
                    }
                    checkaaa.Items.Add(listItem);

                }

            }
            else
            {
                foreach (DataRow dr in dt.Rows)
                {
                    string itemText = dr["StudentRoll"].ToString() + "    ||    " + dr["StudentName"].ToString();
                    string itemValue = dr["StudentRoll"].ToString();

                    ListItem listItem = new ListItem(itemText, itemValue);


                    checkaaa.Items.Add(listItem);

                }
            }





            //--------------------------------------------------------------------------------------------------------






        }
        private void ExportToExcel(DataTable dt)
        {
            // Create a new Excel package
            using (var package = new OfficeOpenXml.ExcelPackage())
            {
                // Create a new worksheet
                var worksheet = package.Workbook.Worksheets.Add("Sheet1");

                // Add the DataTable content to the worksheet
                worksheet.Cells["A1"].LoadFromDataTable(dt, true);

                // Generate the Excel file
                byte[] excelBytes = package.GetAsByteArray();

                // Prompt the user to download the Excel file
                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment; filename=MyDataTable.xlsx");
                Response.BinaryWrite(excelBytes);
                Response.End();
            }
        }
        //private void AddDataTableToPanel(DataTable dt)
        //{
        //    // Clear the panel in case there are any existing controls
        //    theader.Controls.Clear();

        //    // Create a GridView to display the DataTable
        //    GridView gridView = new GridView();
        //    gridView.DataSource = dt;
        //    gridView.DataBind();

        //    // Add the GridView to the Panel
        //    theader.Controls.Add(gridView);
        //}

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            string mysql = "SELECT * FROM `" + courselist.SelectedItem.Text + "`";
            MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
            conn.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            StringBuilder sb = new StringBuilder();
            foreach (DataColumn dc in dt.Columns)
            {
                sb.Append("<th>");
                sb.Append(dc.ColumnName.ToString());
                sb.Append("</th>");

            }
            theader.Controls.Add(new Label { Text = sb.ToString() });

            StringBuilder sh = new StringBuilder();
            foreach (DataRow dr in dt.Rows)
            {
                sh.Append("<tr>");
                foreach (DataColumn dc in dt.Columns)
                {
                    sh.Append("<td>");
                    sh.Append(dr[dc.ColumnName].ToString());
                    sh.Append("</td>");

                }
                sh.Append("</tr>");

            }
            tbody.Controls.Add(new Label { Text = sh.ToString() });

            ExportToExcelButton.Visible = true;



        }

        protected void confirmattend_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            conn.Open();
            string tablechange = "SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '" + courselist.SelectedItem.Text + "' AND COLUMN_NAME = '" + daypicked.Value.ToString() + "';";
            MySqlCommand sdaa2 = new MySqlCommand(tablechange, conn);
            int checker = Convert.ToInt32(sdaa2.ExecuteScalar());
            if (checker == 0)
            {
                tablechange = "ALTER TABLE " + courselist.SelectedItem.Text + " ADD `" + daypicked.Value.ToString() + "` varchar(255);";
                MySqlCommand sdaa1 = new MySqlCommand(tablechange, conn);
                sdaa1.ExecuteNonQuery();
            }

            conn.Close();



            for (int i = 0; i < checkaaa.Items.Count; i++)
            {
                if (checkaaa.Items[i].Selected)
                {
                    conn.Open();
                    string mySql = " UPDATE `" + courselist.SelectedItem.Text + "` SET `" + daypicked.Value.ToString() + "` = 'P' WHERE `StudentRoll` = \"" + checkaaa.Items[i].Value.ToString() + "\"";
                    MySqlCommand sdaa = new MySqlCommand(mySql, conn);
                    sdaa.ExecuteNonQuery();
                    conn.Close();

                }
                else
                {
                    conn.Open();
                    string mySql = " UPDATE `" + courselist.SelectedItem.Text + "` SET `" + daypicked.Value.ToString() + "` = 'A' WHERE `StudentRoll` = \"" + checkaaa.Items[i].Value.ToString() + "\"";
                    MySqlCommand sdaa = new MySqlCommand(mySql, conn);
                    sdaa.ExecuteNonQuery();
                    conn.Close();
                }
            }
            attendsubmit.Visible = true;



        }

        protected void ExportToExcelButton_Click(object sender, EventArgs e)
        {
            DataTable dt = FetchDataFromDatabase();
            ExportToExcel(dt);
        }

        //protected void btnSaveToExcel_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect(Request.RawUrl);

        //}
    }
}