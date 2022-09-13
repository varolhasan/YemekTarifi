using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class MesajDetayaspx : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];

            SqlCommand komut1 = new SqlCommand("select * from TBL_MESAJLAR where MesajId=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr1 = komut1.ExecuteReader();
            while (dr1.Read())
            {
                txtBaslik.Text = dr1[2].ToString();
                txtGonderen.Text = dr1[1].ToString();
                txtMailAdresi.Text = dr1[3].ToString();
                txtMesajIcerik.Text = dr1[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}