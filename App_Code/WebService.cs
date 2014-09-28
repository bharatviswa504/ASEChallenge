using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public string getFreshness(string name1)
    {

        //Declare Connection by passing the connection string from the web config file
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

        //Open the connection
        conn.Open();

        string dist = "";
        string qual = "";

        SqlCommand cmd = new SqlCommand("Select * From freshTable where name='" + name1 + "'", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if (name1 == reader["name"].ToString())
            {
                dist = reader["distance"].ToString();
                qual = reader["type"].ToString();
                break;
            }

        }
        reader.Close();
        //close the connection
        conn.Close();
        if (qual == "")
            return "Does not have information about this Item";
        return qual;
    }

    [WebMethod]
    public string putFreshness(string name, string distance)
    {

        //Declare Connection by passing the connection string from the web config file
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

        //Open the connection
        conn.Open();

        string type;

        int d = Convert.ToInt16(distance);

        if (d < 500)
            type = "Fresh and Season Vegetable";
        else
            type = "Not a Seasional Vegetable";

        //Declare the sql command
        SqlCommand cmd = new SqlCommand("Insert into freshTable(name,distance,type)values('" + name + "','" + distance + "','" + type + "')", conn);

        //Execute the insert query
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        //close the connection
        conn.Close();

        return "Success insert";

    }






}
