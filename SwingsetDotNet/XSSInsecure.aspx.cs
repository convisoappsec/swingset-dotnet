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
using Owasp.Esapi;
using Owasp.Esapi.Interfaces;
using Owasp.Esapi.Codecs;

namespace SwingsetDotNet
{
    public partial class XSSInsegure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IEncoder encoder = Esapi.Encoder;
            if (!String.IsNullOrEmpty(input0.Text))
            {
                string strInput0 = input0.Text;
                string encode0 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput0);
                input0.Text = encode0;
                lbInput0.Value = strInput0;
            }

            if (!String.IsNullOrEmpty(input1.Text))
            {
                string strInput1 = input1.Text;
                lbInput1.Text = strInput1;
                string encode1 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput1);
                input1.Text = encode1;
            }

            if (!String.IsNullOrEmpty(input21.Text))
            {
                string strInput21 = input21.Text;

                if (strInput21.LastIndexOf("onmouseover") != -1)
                {
                    strInput21 = strInput21.Substring(0, 5);
                    divInput21.Attributes.Add("name", strInput21);

                    string strOver = input21.Text.Substring(6, 11);
                    divInput21.Attributes.Add(strOver, input21.Text.Substring(18, 15));

                }else if (strInput21.LastIndexOf("style") != -1)
                {
                    strInput21 = strInput21.Substring(0, 5);
                    divInput21.Attributes.Add("name", strInput21);

                    string strOver = input21.Text.Substring(6, 5);
                    divInput21.Attributes.Add(strOver, input21.Text.Substring(12, 31));
                }

                string encode21 = encoder.Encode(BuiltinCodecs.HtmlAttribute, input21.Text);
                input21.Text = encode21;
            }

            if (!String.IsNullOrEmpty(input22.Text))
            {
                string strInput22 = input22.Text;
                strInput22 = strInput22.Replace("\"", "");
                if (strInput22.LastIndexOf("onmouseover") != -1)
                {
                    strInput22 = strInput22.Substring(0, 5);
                    divInput22.Attributes.Add("name", strInput22);

                    string strOver = input22.Text.Substring(6, 12);
                    divInput22.Attributes.Add(strOver, input22.Text.Replace("\"", "").Substring(18, 15));

                }
                else if (strInput22.LastIndexOf("style") != -1)
                {
                    strInput22 = strInput22.Substring(0, 5);
                    divInput22.Attributes.Add("name", strInput22);

                    string strOver = input22.Text.Substring(6, 5);
                    divInput22.Attributes.Add(strOver, input22.Text.Replace("\"", "").Substring(12, 31));
                }
            }

            if (!String.IsNullOrEmpty(input31.Text))
            {
                string strInput31 = input31.Text;
                divInput31.Attributes.Add("onmouseover", "var i=" + strInput31);
                string encode31 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput31);
                input31.Text = encode31;
            }

            if (!String.IsNullOrEmpty(input32.Text))
            {
                string strInput32 = input32.Text;
                divInput32.Attributes.Add("onmouseover", "var i=" + strInput32);
                string encode32 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput32);
                input32.Text = encode32;
            }

            if (!String.IsNullOrEmpty(input41.Text))
            {
                string strInput41 = input41.Text;
                divInput41.Attributes.Add("style", strInput41);
                string encode41 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput41);
                input41.Text = encode41;
            }

            if (!String.IsNullOrEmpty(input42.Text))
            {
                string strInput42 = input42.Text;
                divInput42.Attributes.Add("style", strInput42);
                string encode42 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput42);
                input42.Text = encode42;
            }

            if (!String.IsNullOrEmpty(input51.Text))
            {
                string strInput51 = input51.Text;
                hiperInput51.Attributes.Add("href", strInput51);
                string encode51 = encoder.Encode(BuiltinCodecs.HtmlAttribute, strInput51);
                input51.Text = encode51;
            }
            

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
