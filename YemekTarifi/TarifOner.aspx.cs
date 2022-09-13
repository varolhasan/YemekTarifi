using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("insert into TBL_TARIFLER (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) " +
                "values (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut1.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut1.Parameters.AddWithValue("@p3", txtYapilis.Text);
            komut1.Parameters.AddWithValue("@p4", FileUploadResim.FileName);
            komut1.Parameters.AddWithValue("@p5", txtTarifOneren.Text);
            komut1.Parameters.AddWithValue("@p6", txtMailAdresi.Text);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır."); 
        }
    }
}