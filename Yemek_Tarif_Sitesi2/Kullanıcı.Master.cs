using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class Kullanıcı : System.Web.UI.MasterPage
    {

        sql_baglanti baglanti = new sql_baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from TBL_Kategori", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into TBl_Kullanıcılar (KullanıcıAd,KullanıcıSifre) values (@p1,@p2)", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p1", KullaniciAdi.Text);
            komut2.Parameters.AddWithValue("@p2", Sifre.Text);
            komut2.ExecuteNonQuery();
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into TBL_Kullanıcılar (KullanıcıAd,KullanıcıSifre,KullanıcıMail) values (@p3,@p4,@p5)", baglanti.baglanti());
            komut3.Parameters.AddWithValue("@p3", KullaniciAdi.Text);
            komut3.Parameters.AddWithValue("@p4", Sifre.Text);
            komut3.Parameters.AddWithValue("@p5", kmail.Text);
            komut3.ExecuteNonQuery();
            KullaniciAdi.Text = null;
            Sifre.Text = null;
            kmail.Text = null;
            Response.Write("<script> alert('Siteye Kaydınız Başarıyla Tamamlanmıştır') </script>");
            //Response.Redirect("Anasayfa.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut4 = new SqlCommand("select * from TBL_Kullanıcılar",baglanti.baglanti());
            SqlDataReader oku = komut4.ExecuteReader();
            List<string> ad = new List<string>();
            List<string> sifre = new List<string>();
            List<string> mail = new List<string>();
            List<bool> admin = new List<bool>();
            int hata_giris = 0;

            while (oku.Read())
            {
                ad.Add(oku[1].ToString());
                mail.Add(oku[2].ToString());
                sifre.Add(oku[3].ToString());
                admin.Add(Convert.ToBoolean(oku[4]));
            }
            baglanti.baglanti().Close();
            oku.Close();

            for(int i=0;i<ad.Count;i++)
            {
                if(ad[i].Equals(KullaniciAdi.Text) && sifre[i].Equals(Sifre.Text) && mail[i].Equals(kmail.Text))
                {

                    if(admin[i])
                    {
                        hata_giris = 0;
                        Response.Redirect("KategorilerAdmin.aspx");
                        break;
                    }

                    else
                    {
                        KullaniciAdi.Text = null;
                        Sifre.Text = null;
                        kmail.Text = null;
                        Response.Write("<script>alert('Hoşgeldiniz Üyemiz :)')</script>");
                        hata_giris = 0;
                        break;
                    }
                }

                else
                {
                    hata_giris++;
                }
            }

            if(hata_giris==ad.Count)
            {
                hata_giris = 0;
                Response.Write("<script>alert('Böyle bir kullanıcı mevcut değil lütfen kayıt olunuz')</script>");
            }


        }
    }
}