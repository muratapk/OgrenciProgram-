using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProgramı
{
    public partial class Dukkan_Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            doldur();
        }
        kuaforumdbEntities baglan=new kuaforumdbEntities();
        private void doldur()
        {
            var veri = baglan.dukkan.ToList();
            //tüm verileri getir 
            GridView1.DataSource = veri;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            dukkan tablo=new dukkan();
            //dukkan türünde bir sinif oluşturduk
            tablo.dukkanAdi = TextBox1.Text;
            tablo.dukkanAdres = TextBox2.Text;
            tablo.webSayfa = TextBox3.Text;
            tablo.telefon= TextBox4.Text;
            baglan.dukkan.Add(tablo);
            baglan.SaveChanges();
            doldur();
            //açıklama
            Response.Write("Kayıt Başarılı");

        }
    }
}