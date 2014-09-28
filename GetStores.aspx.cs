using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using supermarketapi;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        supermarketapi.API_v1 a = new supermarketapi.API_v1();
        string ZipCode = TextBox1.Text.ToString();
        string APIKEY = "37be029d1e";

        Store[] d = a.StoresByZip(APIKEY, ZipCode);


        for (int i = 0; i < d.Length; i++)
        {
           ListBox1.Items.Add(d[i].Storename + d[i].Address + d[i].City + d[i].State);
        }


    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string currentItem = ListBox1.SelectedItem.ToString();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
