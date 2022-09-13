using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string kategoriid;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriId"];
            if (IsPostBack == false)
            {
                SqlCommand komutgetir = new SqlCommand("select * from TBL_KATEGORILER where KategoriId=@p1", bgl.baglanti());
                komutgetir.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader dr1 = komutgetir.ExecuteReader();
                while (dr1.Read())
                {
                    txtKategoriAd.Text = dr1[1].ToString();
                    txtAdet.Text = dr1[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {

            SqlCommand komutguncelle = new SqlCommand("update TBL_KATEGORILER set KategoriAd=@p1, KategoriAdet=@p2 where KategoriId=@p3", bgl.baglanti());
            komutguncelle.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komutguncelle.Parameters.AddWithValue("@p2", txtAdet.Text);
            komutguncelle.Parameters.AddWithValue("@p3", kategoriid);
            komutguncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}