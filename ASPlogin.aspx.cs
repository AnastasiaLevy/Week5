using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASPlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {
        if (Membership.ValidateUser(Login1.UserName, Login1.Password))
        {
            Session["UserName"] = Login1.UserName;
            Session["Password"] = Login1.Password;
            e.Authenticated = true;
            if (Roles.IsUserInRole("student"))
            {
                Login1.DestinationPageUrl = "FlexBox.aspx";
                Session["role"] = "student";
            }

            else if (Roles.IsUserInRole("proff"))
                Login1.DestinationPageUrl = "Default.aspx";
        }
    //    try
    //    {
    //        TcpClient tcpClient = new TcpClient();
    //        Console.WriteLine("Connecting.....");
    //        ASCIIEncoding asen = new ASCIIEncoding();
    //        tcpClient.Connect("192.168.105.205", 8001);//172.16.141.45
    //         use the ipaddress as in the server program
    //        Stream stm = tcpClient.GetStream();
    //        Console.WriteLine("Connected");

    //        byte[] auth = asen.GetBytes("USERNAME/PASSWORD");
    //        stm.Write(auth, 0, auth.Length);

    //        Console.Write("Enter the string to be transmitted : ");
    //        stm = tcpClient.GetStream();
    //        String str = Console.ReadLine();



    //        byte[] ba = asen.GetBytes(str);
            

    //        stm.Write(ba, 0, ba.Length);

    //        byte[] bb = new byte[100];
    //        int k = stm.Read(bb, 0, 100);
    //        char[] array = new char[k];
    //        for (int i = 0; i < k; i++)
    //        {
    //            array[i] = Convert.ToChar(bb[i]);
    //        }

    //        tcpClient.Close();
    //        Console.ReadLine();
    //    }

    //    catch (Exception ex)
    //    {
    //        Console.WriteLine("Error..... " + ex.StackTrace);
    //    }
    }
}




