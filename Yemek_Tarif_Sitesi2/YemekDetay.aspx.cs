using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class YemekDetay : System.Web.UI.Page
    {

        sql_baglanti baglanti = new sql_baglanti();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YemekID"];

            SqlCommand komut = new SqlCommand("select yemekad from tbl_yemek where YemekID=@p1", baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            baglanti.baglanti().Close();


            //Yorum Listeleme
            SqlCommand komut2 = new SqlCommand("select * from TBL_Yorum where Yemek=@p2 and YorumOnay=1", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void YorumGönder_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("Insert into TBL_Yorum (YorumAdSoyad,YorumMail,YorumIcerik,Yemek) values (@p3,@p4,@p5,@p6)", baglanti.baglanti());
            komut3.Parameters.AddWithValue("@p3", Yadsoyad.Text);
            komut3.Parameters.AddWithValue("@p4", Ymail.Text);
            komut3.Parameters.AddWithValue("@p5", Yicerik.Text);
            komut3.Parameters.AddWithValue("@p6", yemekid);
            komut3.ExecuteNonQuery();
            baglanti.baglanti().Close();
            Yadsoyad.Text = null;
            Ymail.Text = null;
            Yicerik.Text = null;
            Response.Write("<script> alert('Yorumunuz Admin tarafından incelendikten sonra yayınlanacaktır.') </script>");
        }
    }
}

        

         

