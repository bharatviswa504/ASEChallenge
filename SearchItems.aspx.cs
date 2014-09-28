using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using supermarketapi;

public partial class searchItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        supermarketapi.API_v1 a = new supermarketapi.API_v1();
        Product[] p = a.SearchByProductName("37be029d1e", TextBox1.Text.ToString());
        for (int i = 0; i < p.Length; i++)
        {
            ListBox1.Items.Add(p[i].Itemname);

        }

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}