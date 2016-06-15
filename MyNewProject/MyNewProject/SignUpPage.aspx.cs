using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyNewProject
{
	public partial class SignUpPage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			txtfirstname.Text = Session["First Name"].ToString();
			txtemail.Text = Session["Email"].ToString();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			try {
				string dateTime = "01/08/2008 14:50:50.42";
				IFormatProvider culture = new System.Globalization.CultureInfo("fr-FR", true);
				DateTime dt2 = DateTime.Parse(dateTime, culture, System.Globalization.DateTimeStyles.AssumeLocal);
				Console.WriteLine(" Month: {0}, Day: {1},Year: {2}, Hour: {3}, Minute: {4}, Second: {5}, Millisecond: {6}",
								  dt2.Year, dt2.Month, dt2.Day, dt2.Hour, dt2.Minute, dt2.Second, dt2.Millisecond);

				//DateTime dt = new DateTime(Convert.ToInt32(dropdownmonth.Text), Convert.ToInt32(dropdownday.Text), Convert.ToInt32(dropdownyear.Text));
				string userid = txtuserid.Text;
				string firstname = txtfirstname.Text;
				string lastname = txtlastname.Text;
				string email = txtemail.Text;
				string birthday = Convert.ToString(dt2);
				string gender = txtgender.Text;
				string addr1 = txtaddr1.Text;
				string addr2 = txtaddr2.Text;
				string street = txtstreet.Text;
				string city = txtcity.Text;
				string state = txtstate.Text;
				string zip = txtzip.Text;
				string mobile = txtmobile.Text;
				string password = txtpassword.Text;
			 string cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
				//string cs = @"server=Sweetu\SQLEXPRESS;database=mynewproject;Trusted_Connection=True;";
				SqlConnection conn = new SqlConnection(cs);
				SqlCommand cmd = new SqlCommand("insert into usersinfo values(@userid,@firstname,@lastname,@email,@birthday,@gender,@addr1,@addr2,@street,@city,@state,@zipcode,@mobilenumber,@password)", conn);
				cmd.Parameters.AddWithValue("@userid", userid);
				cmd.Parameters.AddWithValue("@firstname", firstname);
				cmd.Parameters.AddWithValue("@lastname", lastname);
				cmd.Parameters.AddWithValue("@email", email);
				cmd.Parameters.AddWithValue("@birthday", birthday);
				cmd.Parameters.AddWithValue("@gender", gender);
				cmd.Parameters.AddWithValue("@addr1", addr1);
				cmd.Parameters.AddWithValue("@addr2", addr2);
				cmd.Parameters.AddWithValue("@street", street);
				cmd.Parameters.AddWithValue("@city", city);
				cmd.Parameters.AddWithValue("@state", state);
				cmd.Parameters.AddWithValue("@zipcode", zip);
				cmd.Parameters.AddWithValue("@mobilenumber", mobile);
				cmd.Parameters.AddWithValue("@password", password);
				conn.Open();
				cmd.ExecuteNonQuery();
				conn.Close();
				txtfirstname.Text = "";
				txtlastname.Text = "";
				txtemail.Text = "";
				txtaddr1.Text = "";
				txtaddr2.Text = "";
				txtstreet.Text = "";
				txtcity.Text = "";
				txtzip.Text = "";
				txtmobile.Text = "";
				txtuserid.Text = "";
				txtpassword.Text = "";
				txtrepassword.Text = "";
				txtreemail.Text = "";
				dropdownmonth.Text = "";
				dropdownday.Text = "";
				dropdownyear.Text = "";
				txtfirstname.Focus();
				Response.Redirect("MainPage.aspx");
				
			}

			catch (ArgumentOutOfRangeException ae)
			{
				Console.WriteLine(ae.Message);
				Console.WriteLine("not inserted");
			}
			}
	}
}