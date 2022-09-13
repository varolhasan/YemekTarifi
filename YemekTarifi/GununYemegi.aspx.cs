using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("select * from TBL_YEMEKLER where Durum=1", bgl.baglanti());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
        }
    }
}