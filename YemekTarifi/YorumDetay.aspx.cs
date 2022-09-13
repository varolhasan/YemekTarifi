using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from TBL_YORUMLAR " +
                "inner join TBL_YEMEKLER on TBL_YORUMLAR.YemekId=TBL_YEMEKLER.Yemekid where YorumId=@p1", bgl.baglanti());
                komut1.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    txtAdSoyad.Text = dr1[0].ToString();
                    txtMailAdresi.Text = dr1[1].ToString();
                    txtIcerik.Text = dr1[2].ToString();
                    txtYemek.Text = dr1[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komutguncelle = new SqlCommand("update TBL_YORUMLAR set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3", bgl.baglanti());
            komutguncelle.Parameters.AddWithValue("@p1", txtIcerik.Text);
            komutguncelle.Parameters.AddWithValue("@p2", "True");
            komutguncelle.Parameters.AddWithValue("@p3", id);
            komutguncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}