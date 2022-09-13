using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Yemekleri Listeleme
            SqlCommand komutgetir = new SqlCommand("select * from TBL_YEMEKLER", bgl.baglanti());
            SqlDataReader dr1 = komutgetir.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();

            Panel2.Visible = false;
            Panel5.Visible = false;

            if (Page.IsPostBack == false)
            {
                //Kategori Listesi DropDown'a ekleme
                SqlCommand komutkategori = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
                SqlDataReader dr2 = komutkategori.ExecuteReader();

                DropDownListKategori.DataTextField = "KategoriAd";
                DropDownListKategori.DataValueField = "KategoriId";

                DropDownListKategori.DataSource = dr2;
                DropDownListKategori.DataBind();
            }
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
            }
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete TBL_YEMEKLER where Yemekid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komutekle = new SqlCommand("insert into TBL_YEMEKLER (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values " +
                "(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komutekle.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            komutekle.Parameters.AddWithValue("@p2", txtYemekMalzeme.Text);
            komutekle.Parameters.AddWithValue("@p3", txtYemekTarif.Text);
            komutekle.Parameters.AddWithValue("@p4", DropDownListKategori.SelectedValue);
            komutekle.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komutguncelle = new SqlCommand("update TBL_KATEGORILER set KategoriAdet+=1 where KategoriId=@p1", bgl.baglanti());
            komutguncelle.Parameters.AddWithValue("@p1", DropDownListKategori.SelectedValue);
            komutguncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}