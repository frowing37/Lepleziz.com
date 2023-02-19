using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class KategorilerAdminDetay : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id=Request.QueryString["KategoriID"];

            SqlCommand komut = new SqlCommand("select * from TBL_Kategori where KAtegoriID=@p1",baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();

            if(!Page.IsPostBack)
            {
                while (oku.Read())
                {
                    Label1.Text = oku[1].ToString();
                    kisim.Text = oku[1].ToString();
                    kaded.Text = oku[2].ToString();
                }
            }
            
            baglanti.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("update TBL_Kategori set KategoriAd=@p2,KategoriAdet=@p3,KategoriResim=@p4 where KAtegoriID=@p5",baglanti.baglanti());
            komut3.Parameters.AddWithValue("@p2", kisim.Text);
            komut3.Parameters.AddWithValue("@p3", kaded.Text);
            komut3.Parameters.AddWithValue("@p4", "~/REsimler/"+kresim.FileName);
            komut3.Parameters.AddWithValue("@p5", id);
            komut3.ExecuteNonQuery();
            baglanti.baglanti().Close();
            Response.Redirect("KategorilerAdmin.aspx");
        }
    }
}