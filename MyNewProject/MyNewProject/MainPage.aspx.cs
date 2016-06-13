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
	public partial class MainPage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnSignIn_Click(object sender, EventArgs e)
		{
			string userid = txtUn.Text;
			string password = txtPwd.Text;
			string cs = @"server=Sweetu\SQLEXPRESS;database=mynewproject;Trusted_Connection=True;";
			SqlConnection conn = new SqlConnection(cs);
			SqlCommand cmd = new SqlCommand("Select count(*) from usersinfo where userid=@userid and password=@password",conn);
			cmd.Parameters.AddWithValue("@userid", userid);
			cmd.Parameters.AddWithValue("@password", password);
			conn.Open();
			object i = cmd.ExecuteScalar();
			conn.Close();
			if(Convert.ToInt16(i) > 0)
			{
				Response.Redirect("UserInfoPage.aspx");
			}
			////SqlDataAdapter da = new SqlDataAdapter(cmd);
			//DataTable dt = new DataTable();
			//da.Fill(dt);
			//if (dt.Rows.Count > 0)
			//{
			//	Response.Redirect("UserInfoPage.aspx");
			//}
			//else
			//{
			//	Response.Write(" <script> alert('Please enter valid Username and Password') </script> ");
			//}

		}

		protected void btnSignUp_Click(object sender, EventArgs e)
		{
			Response.Redirect("SignUpPage.aspx");
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			Response.Redirect("ForgotPassword.aspx");
		}
	}
}