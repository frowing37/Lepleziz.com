using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class Kullanıcılar : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                id = Request.QueryString["KullanıcıId"];
                islem = Request.QueryString["islem"];

                if(islem=="sil")
                {
                    SqlCommand komut2 = new SqlCommand("delete TBL_Kullanıcılar where KullanıcıID=@p1", baglanti.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.ExecuteNonQuery();
                }

                if(islem=="adminyap")
                {
                    SqlCommand komut3 = new SqlCommand("update TBL_Kullanıcılar set Admin=@p2 where KullanıcıID=@p3", baglanti.baglanti());
                    komut3.Parameters.AddWithValue("@p2", true);
                    komut3.Parameters.AddWithValue("@p3", id);
                    komut3.ExecuteNonQuery();
                }

                if (islem == "adminsil")
                {
                    SqlCommand komut4 = new SqlCommand("update TBL_Kullanıcılar set Admin=@p4 where KullanıcıID=@p5", baglanti.baglanti());
                    komut4.Parameters.AddWithValue("@p4", false);
                    komut4.Parameters.AddWithValue("@p5", id);
                    komut4.ExecuteNonQuery();
                }
            }


            SqlCommand komut = new SqlCommand("select * from TBL_Kullanıcılar", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }
    }
}