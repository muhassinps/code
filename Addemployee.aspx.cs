using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Employee_Management_System
{
    public partial class Addemployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data source=.; Initial Catalog=EmployeeManagementSystem; Integrated Security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Employee" + "(firstname,lastname,dob,email,gender,password)  values (@firstname,@lastname,@dob,@email,@gender,@password)", con);
            cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox6.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@password", TextBox5.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}