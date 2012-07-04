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
using Owasp.Esapi;
using Owasp.Esapi.Errors;
using Owasp.Esapi.Interfaces;
using Owasp.Esapi.Configuration;

namespace SwingsetDotNet
{
    public partial class ObjectReferenceSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string showItem = Request.QueryString["showItem"];
            string href = "?function=ObjectReference&mode=secure&showItem=";
            string output = "Click a link or change the URL to change this message.";

            if (String.IsNullOrEmpty(showItem))
            {
                HashSet<string> map = new HashSet<string>();
                string directReference0 = "Oh man...when you're on the other side of the screen...it all looks so easy... ";
                string directReference1 = "Tron, is that you?";
                string directReference2 = "The Matrix has you.";
                string directReference3 = "Take the blue pill... trust me!";
                string directReference4 = "The Matrix is everywhere. It is all around us. Even now, in this very room. You can see it when you look out your window or when you turn on your television. You can feel it when you go to work... when you go to church... when you pay your taxes. It is the world that has been pulled over your eyes to blind you from the truth.";
                string directReference5 = "The Matrix is a system, Neo. That system is our enemy. But when you're inside, you look around, what do you see? Businessmen, teachers, lawyers, carpenters. The very minds of the people we are trying to save. But until we do, these people are still a part of that system and that makes them our enemy. You have to understand, most of these people are not ready to be unplugged. And many of them are so inert, so hopelessly dependent on the system, that they will fight to protect it.";
                string directReference6 = "PC Load Letter? What does that mean?";

                //add direct references to set
                map.Add(directReference0);
                map.Add(directReference1);
                map.Add(directReference2);
                map.Add(directReference3);
                map.Add(directReference4);
                map.Add(directReference5);
                map.Add(directReference6);

                AccessReferenceMap instance = new AccessReferenceMap();

                string ind0 = instance.AddDirectReference((Object)directReference0);
                string ind1 = instance.AddDirectReference((Object)directReference1);
                string ind2 = instance.AddDirectReference((Object)directReference2);
                string ind3 = instance.AddDirectReference((Object)directReference3);
                string ind4 = instance.AddDirectReference((Object)directReference4);
                string ind5 = instance.AddDirectReference((Object)directReference5);
                string ind6 = instance.AddDirectReference((Object)directReference6);

                Hashtable session = new Hashtable();

                session.Add(ind0, directReference0);
                session.Add(ind1, directReference1);
                session.Add(ind2, directReference2);
                session.Add(ind3, directReference3);
                session.Add(ind4, directReference4);
                session.Add(ind5, directReference5);
                session.Add(ind6, directReference6);

                session.Add("ind0", ind0);
                session.Add("ind1", ind1);
                session.Add("ind2", ind2);
                session.Add("ind3", ind3);
                session.Add("ind4", ind4);
                session.Add("ind5", ind5);
                session.Add("ind6", ind6);

                GravaSessao(session);
            }
            string dir0 = Session["ind0"].ToString();
            string dir1 = Session["ind1"].ToString();
            string dir2 = Session["ind2"].ToString();
            string dir3 = Session["ind3"].ToString();
            string dir4 = Session["ind4"].ToString();
            string dir5 = Session["ind5"].ToString();
            string dir6 = Session["ind6"].ToString();


            hind0.NavigateUrl = href + Session["ind0"].ToString();
            hind0.Text = Session["ind0"].ToString();
            hind1.NavigateUrl = href + Session["ind1"].ToString();
            hind1.Text = Session["ind1"].ToString();
            hind2.NavigateUrl = href + Session["ind2"].ToString();
            hind2.Text = Session["ind2"].ToString();
            hind3.NavigateUrl = href + Session["ind3"].ToString();
            hind3.Text = Session["ind3"].ToString();
            hind4.NavigateUrl = href + Session["ind4"].ToString();
            hind4.Text = Session["ind4"].ToString();
            hind5.NavigateUrl = href + Session["ind5"].ToString();
            hind5.Text = Session["ind5"].ToString();
            hind6.NavigateUrl = href + Session["ind6"].ToString();
            hind6.Text = Session["ind6"].ToString();

            ldir0.Text = Session[dir0].ToString();
            ldir1.Text = Session[dir1].ToString();
            ldir2.Text = Session[dir2].ToString();
            ldir3.Text = Session[dir3].ToString();
            ldir4.Text = Session[dir4].ToString();
            ldir5.Text = Session[dir5].ToString();
            ldir6.Text = Session[dir6].ToString();



            if (!String.IsNullOrEmpty(showItem))
            {
                if (!String.IsNullOrEmpty(Session[showItem].ToString()))
                    output = Session[showItem].ToString();
                else
                    output = "<p style=\"color: red; display:inline\">Invalid item.</p>  See the value? :)";
            }

            lkHere.Text = "here";
            lkHere.NavigateUrl = "?function=ObjectReference&mode=secure&refresh";

            lblOutput.Text = output;
        }

        public void GravaSessao(Hashtable table)
        {
            if (table.Count > 0)
            {
                foreach (var item in table.Keys)
                {
                    Session[item.ToString()] = table[item].ToString();
                }
            }

        }
    }
}
