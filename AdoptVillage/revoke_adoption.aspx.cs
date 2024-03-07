using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class revoke_adoption : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query = "select * from Village where SponserID='" + Session["SponserID"] + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "No Record found ....";
            return;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        if (TextBox1.Text == "")
        {
            Label2.Text = "Select a village";
            return;
        }

        update_sponser();
        update_village();

        Response.Redirect("sponser_home.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
    }

    public void update_sponser()
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query;
        query = "update sponser set VillageID='NA' where sponserID='" + Session["SponserID"] + "'";

        SqlCommand cmd = new SqlCommand(query, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
    }

    public void update_village()
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query;
        query = "update Village set SponserID='', status='NA' where VillageID='" + TextBox1.Text + "'";

        SqlCommand cmd = new SqlCommand(query, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
    }
}