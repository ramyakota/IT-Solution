using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace MyNewProject
{
	public partial class UserInfoPage : System.Web.UI.Page
	{
		static string cs = @"server=Sweetu\SQLEXPRESS;database=mynewproject;Trusted_Connection=True;";
		SqlConnection conn = new SqlConnection(cs);
		SqlCommand cmd;
		public void DisplayFields()
		{
			try
			{
				
				cmd = new SqlCommand("select userid,firstname,lastname,email,addr1,addr2,street,city,state,zipcode,mobilenumber from userinfo", conn);
				conn.Open();
				SqlDataReader dr = cmd.ExecuteReader();
				while (dr.Read())
				{
					txtuserid.Text = (dr["userid"].ToString());
					txtfirstname.Text = (dr["firstname"].ToString());
					txtlastname.Text = (dr["lastname"].ToString());
					txtemail.Text = (dr["email"].ToString());
					//dropdownmonth.Text = (dr["userid"].ToString());
					//dropdownday.Text = (dr["userid"].ToString());
					//dropdownyear.Text = (dr["userid"].ToString());
					//txtgender.SelectedItem.Text = (dr["gender"].ToString());
					txtaddr1.Text = (dr["addr1"].ToString());
					txtaddr2.Text = (dr["addr2"].ToString());
					txtstreet.Text = (dr["street"].ToString());
					txtcity.Text = (dr["city"].ToString());
					txtstate.Text = (dr["state"].ToString());
					txtzip.Text = (dr["zipcode"].ToString());
					txtmobile.Text = (dr["mobilenumber"].ToString());
				}
				
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
			}
			finally
			{
				conn.Close();
			}
		}
		protected void Page_Load(object sender, EventArgs e)
		{
			if(!IsPostBack)
			{
				DisplayFields();
			}
		}

		protected void btnedit_Click(object sender, EventArgs e)
		{
			try
			{ 
			string userid = txtuserid.Text;
			string firstname = txtfirstname.Text;
			string lastname = txtlastname.Text;
			string email = txtemail.Text;
			string addr1 = txtaddr1.Text;
			string addr2 = txtaddr2.Text;
			string street = txtstreet.Text;
			string city = txtcity.Text;
			string state = txtstate.Text;
			string zip = txtzip.Text;
			string mobile = txtmobile.Text;
			cmd = new SqlCommand("update userinfo set firstname=@firstname, lastname=@lastname, email=@email, addr1=@addr1,addr2=@addr2, street=@street, city=@city, state=@state, zipcode=@zipcode, mobilenumber=@mobilenumber where userid=@userid", conn);
			cmd.Parameters.AddWithValue("@userid", userid);
			cmd.Parameters.AddWithValue("@firstname", firstname);
			cmd.Parameters.AddWithValue("@lastname", lastname);
			cmd.Parameters.AddWithValue("@email", email);
			cmd.Parameters.AddWithValue("@addr1", addr1);
			cmd.Parameters.AddWithValue("@addr2", addr2);
			cmd.Parameters.AddWithValue("@street", street);
			cmd.Parameters.AddWithValue("@city", city);
			cmd.Parameters.AddWithValue("@state", state);
			cmd.Parameters.AddWithValue("@zipcode", zip);
			cmd.Parameters.AddWithValue("@mobilenumber", mobile);
			conn.Open();
			cmd.ExecuteNonQuery();
		}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
			}
			finally
			{
				conn.Close();
			}
		}

}
}