using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login_sponser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sponser_reg.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query = "select * from Sponser where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        Label1.Text = "";
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["SponserID"] = dr["SponserID"].ToString();
            }

            Session["username"] = TextBox1.Text;
            Conn.Close();
            Response.Redirect("sponser_home.aspx");
        }
        Label1.Text = "Invalid login...";

        Conn.Close();
    }


}