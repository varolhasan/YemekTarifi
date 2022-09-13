using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public class sqlsinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-RP5F7ET;Initial Catalog=Dbo_Yemektarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}