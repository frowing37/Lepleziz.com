using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class YorumAdminDetay : System.Web.UI.Page
    {

        sql_baglanti baglanti = new sql_baglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                id = Request.QueryString["YorumID"];

                SqlCommand komut = new SqlCommand("select *,YemekAd from TBL_Yorum inner join TBL_Yemek on TBL_Yemek.YemekID=TBL_Yorum.Yemek where YorumID=@p1", baglanti.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();


                while (oku.Read())
                {
                    yad.Text = oku[1].ToString();
                    yic.Text = oku[5].ToString();
                    yy.Text = oku[8].ToString();
                    CheckBox1.Checked = Convert.ToBoolean(oku[4]);
                }

            }

            
            baglanti.baglanti().Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];

            SqlCommand komut2 = new SqlCommand("update TBL_Yorum set YorumOnay=@p2 where YorumID=@p3", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p2", CheckBox1.Checked);
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            baglanti.baglanti().Close();
            Response.Redirect("YorumlarAdmin.aspx");
        }
    }
}