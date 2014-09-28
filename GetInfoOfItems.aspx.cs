using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using localhost;

public partial class GetInfoOfItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        localhost.WebService a = new localhost.WebService();

        string item = TextBox1.Text.ToString();

        string result;
        result = a.getFreshness(item);

        Label2.Text = result;


    }
}