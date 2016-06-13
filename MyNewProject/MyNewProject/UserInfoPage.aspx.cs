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
		public void DisplayFields()
		{
			try
			{
				string cs = @"server=Sweetu\SQLEXPRESS;database=mynewproject;Trusted_Connection=True;";
				SqlConnection conn = new SqlConnection(cs);
				SqlCommand cmd = new SqlCommand("select userid,firstname,lastname,email,addr1,addr2,street,city,state,zipcode,mobilenumber from userinfo", conn);
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

		}
	}
}