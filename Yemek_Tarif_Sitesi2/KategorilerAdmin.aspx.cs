using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class KategorilerAdmin : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
            }


            SqlCommand komut = new SqlCommand("select * from TBL_Kategori", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            Panel3.Visible = false;
            Panel4.Visible = false;
            
            

            //Kategori Silme
            if(islem=="sil")
            {
                SqlCommand komut3 = new SqlCommand("delete from TBL_Kategori where KategoriID=@p3", baglanti.baglanti());
                komut3.Parameters.AddWithValue("@p3", id);
                komut3.ExecuteNonQuery();
                baglanti.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
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
            SqlCommand komut2 = new SqlCommand("insert into TBL_Kategori (KategoriAd) values (@p1)", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            baglanti.baglanti().Close();
            TextBox1.Text = null;
        }
    }
}