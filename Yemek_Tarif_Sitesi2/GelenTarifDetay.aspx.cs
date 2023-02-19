using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class GelenTarifDetay : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                id = Request.QueryString["TarifID"];
            }


            SqlCommand komut = new SqlCommand("select * from TBL_Tarif where TarifID=@p1", baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();

            while(oku.Read())
            {
                tad.Text = oku[1].ToString();
                tsah.Text = oku[5].ToString();
                tmal.Text = oku[2].ToString();
                tyap.Text = oku[3].ToString();
                CheckBox1.Checked = Convert.ToBoolean(oku[8]);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update TBL_Tarif set TarifAdi=@p2,TarifMalzeme=@p3,TarifYapilis=@p4,TarifSahip=@p5,TarifDurum=@p6", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p2", tad.Text);
            komut2.Parameters.AddWithValue("@p3", tmal.Text);
            komut2.Parameters.AddWithValue("@p4", tyap.Text);
            komut2.Parameters.AddWithValue("@p5", tsah.Text);
            komut2.Parameters.AddWithValue("@p6", CheckBox1.Checked);
            komut2.ExecuteNonQuery();

            Response.Redirect("GelenTarifler.aspx");

        }
    }
}