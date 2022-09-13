using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Araçlara Verileri Taşıma
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from TBL_YEMEKLER where Yemekid=@p1", bgl.baglanti());
                komut1.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    txtYemekAd.Text = dr1[1].ToString();
                    txtMalzemeler.Text = dr1[2].ToString();
                    txtTarif.Text = dr1[3].ToString();
                }
                bgl.baglanti().Close();

                //DropDown'a Kategorileri Getirme
                if (Page.IsPostBack == false)
                {
                    SqlCommand komut2 = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownListKategori.DataTextField = "KategoriAd";
                    DropDownListKategori.DataValueField = "KategoriId";

                    DropDownListKategori.DataSource = dr2;
                    DropDownListKategori.DataBind();
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Pictures/" + FileUpload1.FileName));

            SqlCommand komutguncelle = new SqlCommand("update TBL_YEMEKLER set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4, " +
                "YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
            komutguncelle.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            komutguncelle.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komutguncelle.Parameters.AddWithValue("@p3", txtTarif.Text);
            komutguncelle.Parameters.AddWithValue("@p4", DropDownListKategori.SelectedValue);
            komutguncelle.Parameters.AddWithValue("@p5", id);
            komutguncelle.Parameters.AddWithValue("@p6", "~/Pictures/" + FileUpload1.FileName);
            komutguncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void btnGununYemegiSec_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("update TBL_YEMEKLER set Durum=0", bgl.baglanti());
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komutsec = new SqlCommand("update TBL_YEMEKLER set Durum=1 where Yemekid=@p1", bgl.baglanti());
            komutsec.Parameters.AddWithValue("@p1", id);
            komutsec.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}