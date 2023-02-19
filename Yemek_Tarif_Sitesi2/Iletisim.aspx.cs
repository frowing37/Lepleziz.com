using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sql_baglanti bgl = new sql_baglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void gonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into TBL_Mesaj (MesajAdSoyad,MesajMail,MesajIcerik) values (@p1,@p2,@p3)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Madsoyad.Text);
            komut.Parameters.AddWithValue("@p2", Mmail.Text);
            komut.Parameters.AddWithValue("@p3", Micerik.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Madsoyad.Text = null;
            Mmail.Text = null;
            Micerik.Text = null;
            Response.Write("<script> alert('Mesajınız gönderilmiştir') </script>");
        }
    }
}