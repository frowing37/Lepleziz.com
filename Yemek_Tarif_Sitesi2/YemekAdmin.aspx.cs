using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class YemekAdmin : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Page.IsPostBack==false)
            {
                islem = Request.QueryString["islem"];
                id = Request.QueryString["YemekID"];

                //Kategori Dropdownlist
                SqlCommand komut4 = new SqlCommand("select * from TBL_Kategori", baglanti.baglanti());
                SqlDataReader oku4 = komut4.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAD";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = oku4;
                DropDownList1.DataBind();
            }

            SqlCommand komut = new SqlCommand("select * from TBL_Yemek", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            Panel3.Visible = false;
            Panel4.Visible = false;

            //Silme İşlemi
            if(islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("delete TBL_Yemek where YemekID=@p1", baglanti.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                baglanti.baglanti().Close();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            SqlCommand komut3 = new SqlCommand("insert into TBL_Yemek (YemekAd,YemekMalzeme,YemekTarif,YemekResim,Kategori) values (@p2,@p3,@p3,@p5,@p6)", baglanti.baglanti());
            komut3.Parameters.AddWithValue("@p2", yemekad.Text);
            komut3.Parameters.AddWithValue("@p3", yemekmalzeme.Text);
            komut3.Parameters.AddWithValue("@p4", yemektarif.Text);
            komut3.Parameters.AddWithValue("@p5", "~/REsimler/" + FileUpload1.FileName);
            komut3.Parameters.AddWithValue("@p6", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            baglanti.baglanti().Close();
            yemekad.Text = null;
            yemekmalzeme.Text = null;
            yemekmalzeme.Text = null;


            //Kategori Sayısını Arttırma
            SqlCommand komut5 = new SqlCommand("update TBL_Kategori set KategoriAdet+=1 where KategoriID=@p7", baglanti.baglanti());
            komut5.Parameters.AddWithValue("@p7", DropDownList1.SelectedValue);
            komut5.ExecuteNonQuery();
            baglanti.baglanti().Close();

        }
    }
}