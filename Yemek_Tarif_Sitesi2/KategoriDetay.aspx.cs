using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string kategoriID= "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID=Request.QueryString["KategoriID"];

            SqlCommand komut = new SqlCommand("select * from tbl_yemek where kategori=@p1", baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriID);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

            baglanti.baglanti().Close();
        }

    }

}