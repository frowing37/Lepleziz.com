using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from TBL_Hakkımızda", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();

            while(oku.Read())
            {
                TextBox1.Text = oku[0].ToString();
            }
            baglanti.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update * from TBL_Hakkımızda set Hakkımızdaicerik=@p1, HakkımızdaResimler=@p2", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", "~/REsimler/"+FileUpload1.FileName);
            komut2.ExecuteNonQuery();

        }

    }
}