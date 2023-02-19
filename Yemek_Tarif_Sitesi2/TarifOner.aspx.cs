using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class TarifOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        sql_baglanti baglanti = new sql_baglanti();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TarifAdi.Text == null || Malzemeler.Text==null || Yapilis.Text==null || TarifSahip.Text==null || mail.Text==null)
            {
                TarifAdi.Text = null;
                Malzemeler.Text = null;
                Yapilis.Text = null;
                //FileUpload1.FileName = null;
                TarifSahip.Text = null;
                mail.Text = null;
                Response.Write("<script> alert('Verilen alanları eksik doldurmadığınızdan emin olun.') </script>");
            }

            else
            {
                FileUpload1.SaveAs(Server.MapPath("/REsimler/" + FileUpload1.FileName));

                SqlCommand komut = new SqlCommand("Insert into TBL_Tarif (TarifAdi,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifMail) values (@p1,@p2,@p3,@p4,@p5,@p6)", baglanti.baglanti());
                komut.Parameters.AddWithValue("@p1", TarifAdi.Text);
                komut.Parameters.AddWithValue("@p2", Malzemeler.Text);
                komut.Parameters.AddWithValue("@p3", Yapilis.Text);
                komut.Parameters.AddWithValue("@p4", "~/REsimler/"+FileUpload1.FileName);
                komut.Parameters.AddWithValue("@p5", TarifSahip.Text);
                komut.Parameters.AddWithValue("@p6", mail.Text);
                komut.ExecuteNonQuery();
                baglanti.baglanti().Close();
                TarifAdi.Text = null;
                Malzemeler.Text = null;
                Yapilis.Text = null;
                //FileUpload1.FileName = null;
                TarifSahip.Text = null;
                mail.Text = null;
                Response.Write("<script> alert('Tarifiniz Alınmışır.') </script>");
            }

        }
    }
}