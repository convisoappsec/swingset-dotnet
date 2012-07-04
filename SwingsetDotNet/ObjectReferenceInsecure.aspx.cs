using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;

namespace SwingsetDotNet
{
    public partial class ObjectReferenceInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string href = "?function=ObjectReference&mode=insecure&user=";

            Hashtable hash = new Hashtable();
            hash.Add("Admin", "My password is abc123.  It's really secure, but it controls EVERYTHING, so don't tell anyone - please.");
            hash.Add("admin", "So long, and thanks for all the fish<br />So sad that it should come to this<br />We tried to warn you all, but, oh, dear<br />You may not share out intellect<br />Which might explain your disrespect<br />For all the natural wonders that grow around you<br />So long, so long, and thanks for all the fish! The world's about to be destroyed<br />There's no point getting all annoyed<br />Lie back and let the planet dissolve around you<br />Despite those nets of tuna fleets<br />We thought that most of you were sweet<br />Especially tiny tots and your pregnant women<br />So long, so long, so long, so long, so long! So long, so long, so long, so long, so long! So long, so long, and thanks for all the fish!<br /> If I had just one last wish<br />I would like a tasty fish!<br />If we could just change one thing<br />We would all have learnt to sing!<br />Come one and all<br />Man and mammal<br />Side by side<br />In life's great gene pool!<br />So long, so long, so long, so long, so long<br />So long, so long, so long, so long<br />So long, so long and thanks for all the fish! ");
            hash.Add("Jeff1", "Take the blue pill... trust me!");
            hash.Add("Jeff2", "The Matrix has you.");
            hash.Add("Jeff3", "We're two wild and crazy guys!");
            hash.Add("Kevin1", "Tron, is that you?");
            hash.Add("Kevin2", "Oh man...when you're on the other side of the screen...it all looks so easy... ");
            hash.Add("Kevin3", "I should never have written all of those tank programs!");
            hash.Add("matrix", "Do you want to know what <i>it</i> is?");
            hash.Add("matrix1", "The Matrix is everywhere. It is all around us. Even now, in this very room. You can see it when you look out your window or when you turn on your television. You can feel it when you go to work... when you go to church... when you pay your taxes. It is the world that has been pulled over your eyes to blind you from the truth.");
            hash.Add("matrix2", "The Matrix is a system, Neo. That system is our enemy. But when you're inside, you look around, what do you see? Businessmen, teachers, lawyers, carpenters. The very minds of the people we are trying to save. But until we do, these people are still a part of that system and that makes them our enemy. You have to understand, most of these people are not ready to be unplugged. And many of them are so inert, so hopelessly dependent on the system, that they will fight to protect it.");

            Hashtable arraySession = new Hashtable();
		    arraySession.Add("do0", "Admin");
	        arraySession.Add("do1", "admin");
	        arraySession.Add("do2", "Jeff1");
	        arraySession.Add("do3", "Jeff2");
	        arraySession.Add("do4", "Jeff3");
	        arraySession.Add("do5", "Kevin1");
	        arraySession.Add("do6", "Kevin2");
	        arraySession.Add("do7", "Kevin3");
	        arraySession.Add("do8", "matrix");
	        arraySession.Add("do9", "matrix1");
	        arraySession.Add("do10", "matrix2");



            bool found = false;
            string quote = "Change the URL to access other files...";
            string user = Request.QueryString["user"];
            if (!String.IsNullOrEmpty(user))
            {
                found = true;
                quote = hash[user].ToString();
                lblQuote.Style.Add("color", "red");
            }

            lblQuote.Text = quote;
            dvFound.Visible = found;


            do0.NavigateUrl = href + arraySession["do0"].ToString();
            do0.Text = arraySession["do0"].ToString();
            do1.NavigateUrl = href + arraySession["do1"].ToString();
            do1.Text = arraySession["do1"].ToString();
            do2.NavigateUrl = href + arraySession["do2"].ToString();
            do2.Text = arraySession["do2"].ToString();
            do3.NavigateUrl = href + arraySession["do3"].ToString();
            do3.Text = arraySession["do3"].ToString();
            do4.NavigateUrl = href + arraySession["do4"].ToString();
            do4.Text = arraySession["do4"].ToString();
            do5.NavigateUrl = href + arraySession["do5"].ToString();
            do5.Text = arraySession["do5"].ToString();
            do6.NavigateUrl = href + arraySession["do6"].ToString();
            do6.Text = arraySession["do6"].ToString();
            do7.NavigateUrl = href + arraySession["do7"].ToString();
            do7.Text = arraySession["do7"].ToString();
            do8.NavigateUrl = href + arraySession["do8"].ToString();
            do8.Text = arraySession["do8"].ToString();
            do9.NavigateUrl = href + arraySession["do9"].ToString();
            do9.Text = arraySession["do9"].ToString();
            do10.NavigateUrl = href + arraySession["do10"].ToString();
            do10.Text = arraySession["do10"].ToString();
        }
    }
}
