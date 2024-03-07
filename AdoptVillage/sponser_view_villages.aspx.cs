using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class sponser_view_villages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query = "select * from Village";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "no records found....";
            return;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sponser_home.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        Label2.Text = "";
        if (TextBox1.Text == "")
        {
            Label2.Text = "Select a village";
            return;
        }

        update_village();
        update_sponser();

        Response.Redirect("sponser_view_villages.aspx");
    }

    public void update_sponser()
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query;
        query = "update sponser set VillageID='" + TextBox1.Text + "' where sponserID='" + Session["SponserID"] + "'";

        SqlCommand cmd = new SqlCommand(query, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
    }

    public void update_village()
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query;
        query = "update Village set SponserID='" + Session["SponserID"] + "', status='Adopted' where VillageID='" + TextBox1.Text + "'";

        SqlCommand cmd = new SqlCommand(query, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String vid = GridView1.SelectedRow.Cells[2].Text;
        
        Label1.Text = "";
        if (check_sponser(vid) == 0)
        {
            Label1.Text = "This village is Already sponsered...please select other village";
            return;
        }

        if (check_sponser_repeat () == 1)
        {
            Label1.Text = "You are Already sponsered a village...please register again";
            return;
        }

        TextBox1.Text = vid;
    }

    public int check_sponser(String vid)
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query = "select * from Village where VillageID='" + vid + "' and Status ='NA'";
        Conn.Open();
        
        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();
        
        if (dr.HasRows)
        {           
            Conn.Close();
            return 1;
        }

        Conn.Close();
        return 0;
    }

    public int check_sponser_repeat()
    {
        SqlConnection Conn = new SqlConnection("data source=.; database=AdoptVillage; integrated security=SSPI");

        String query = "select * from Village where SponserID='" + Session["SponserID"] + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Conn.Close();
            return 1;
        }

        Conn.Close();
        return 0;
    }
}
