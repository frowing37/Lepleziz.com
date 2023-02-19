using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class YemekAdminDetay : System.Web.UI.Page
    {

        sql_baglanti baglanti = new sql_baglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
            SqlCommand komut2 = new SqlCommand("select * from TBL_Yemek where YemekId=@p6", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p6", id);
            SqlDataReader oku = komut2.ExecuteReader();
            

            if(Page.IsPostBack==false)
            {
                while (oku.Read())
                {
                    Label1.Text = oku[1].ToString();
                    yad.Text = oku[1].ToString();
                    ymal.Text = oku[2].ToString();
                    ytar.Text = oku[3].ToString();
                }


                //Kategori Dropdownlist
                SqlCommand komut4 = new SqlCommand("select * from TBL_Kategori", baglanti.baglanti());
                SqlDataReader oku4 = komut4.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAD";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = oku4;
                DropDownList1.DataBind();
            }

            baglanti.baglanti().Close();

        }

        protected void guncelle_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("update TBL_Yemek set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,YemekResim=@p4,Kategori=@p7 where YemekID=@p5", baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", yad.Text);
            komut.Parameters.AddWithValue("@p2", ymal.Text);
            komut.Parameters.AddWithValue("@p3", ytar.Text);
            komut.Parameters.AddWithValue("@p4", "~/REsimler/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.Parameters.AddWithValue("@p7", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglanti.baglanti().Close();

        }
    }
}