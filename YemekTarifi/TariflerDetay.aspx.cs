using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class TariflerDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komutgetir = new SqlCommand("select * from TBL_TARIFLER where TarifId=@p1", bgl.baglanti());
                komutgetir.Parameters.AddWithValue("@p1", id);
                SqlDataReader drgetir = komutgetir.ExecuteReader();
                while (drgetir.Read())
                {
                    txtTarifAd.Text = drgetir[1].ToString();
                    txtTarifMalzemeler.Text = drgetir[2].ToString();
                    txtTarifYapilis.Text = drgetir[3].ToString();
                    txtTarifOneren.Text = drgetir[5].ToString();
                    txtTarifOnerenMail.Text = drgetir[6].ToString();
                }
                bgl.baglanti().Close();
            }
            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
                SqlDataReader dr1 = komut1.ExecuteReader();

                DropDownListKategori.DataTextField = "KategoriAd";
                DropDownListKategori.DataValueField = "KategoriId";

                DropDownListKategori.DataSource = dr1;
                DropDownListKategori.DataBind();
            }

        }

        protected void btnTarifOnayla_Click(object sender, EventArgs e)
        {
            //Tarif Onaylama
            SqlCommand komut1 = new SqlCommand("update TBL_TARIFLER set TarifDurum=1 where TarifId=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", id);
            komut1.ExecuteReader();
            bgl.baglanti().Close();

            //Onaylanan Tarifleri Yemeklere Ekleme
            SqlCommand komut2 = new SqlCommand("insert into TBL_YEMEKLER (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values " +
                "(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", txtTarifMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txtTarifYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownListKategori.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategoriyi güncelleme
            SqlCommand komut3 = new SqlCommand("update TBL_KATEGORILER set KategoriAdet+=1 where KategoriId=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownListKategori.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}