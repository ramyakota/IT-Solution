using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace MyNewProject
{
	public partial class UserInfoPage : System.Web.UI.Page
	{
		static string cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
		//static string cs = @"server=Sweetu\SQLEXPRESS;database=mynewproject;Trusted_Connection=True;";
		SqlConnection conn = new SqlConnection(cs);
		SqlCommand cmd;
		public void DisplayFields()
		{
			try
			{
				 cmd = new SqlCommand("select userid,firstname,lastname,email,addr1,addr2,street,city,state,zipcode,mobilenumber from usersinfo", conn);
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
				conn.Close();
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
			}
			finally
			{

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
				//string userid = txtuserid.Text;
				//string firstname = txtfirstname.Text;
				//string lastname = txtlastname.Text;
				//string email = txtemail.Text;
				//string addr1 = txtaddr1.Text;
				//string addr2 = txtaddr2.Text;
				//string street = txtstreet.Text;
				//string city = txtcity.Text;
				//string state = txtstate.Text;
				//string zip = txtzip.Text;
				//string mobile = txtmobile.Text;
				//cmd = new SqlCommand("update usersinfo set firstname=@firstname, lastname=@lastname, email=@email, addr1=@addr1,addr2=@addr2, street=@street, city=@city, state=@state, zipcode=@zipcode, mobilenumber=@mobilenumber where userid=@userid", conn);
				cmd = new SqlCommand("pro_usersinfo",conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
				cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
				cmd.Parameters.AddWithValue("@lastname", txtlastname.Text);
				cmd.Parameters.AddWithValue("@email", txtemail.Text);
				cmd.Parameters.AddWithValue("@addr1", txtaddr1.Text);
				cmd.Parameters.AddWithValue("@addr2", txtaddr2.Text);
				cmd.Parameters.AddWithValue("@street", txtstreet.Text);
				cmd.Parameters.AddWithValue("@city", txtcity.Text);
				cmd.Parameters.AddWithValue("@state", txtstate.Text);
				cmd.Parameters.AddWithValue("@zipcode", txtzip.Text);
				cmd.Parameters.AddWithValue("@mobilenumber", txtmobile.Text);
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