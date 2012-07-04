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
    public partial class RandomizerSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void getRandomBoolean(object sender, EventArgs e)
        {
            IRandomizer randomizer = Esapi.Randomizer;
            bool randomBoolean = randomizer.GetRandomBoolean();
            lbRandomBoolean.Text = randomBoolean.ToString();
        }

        protected void getRandomFileName(object sender, EventArgs e)
        {
            string strRandomFileName = "";
            IRandomizer randomizer = Esapi.Randomizer;
            if(!String.IsNullOrEmpty(txtFileExtension.Text))
                strRandomFileName = randomizer.GetRandomFilename(txtFileExtension.Text);

            lblRandomFileName.Text = strRandomFileName;
        }

        protected void getRandomInteger(object sender, EventArgs e)
        {
            IRandomizer randomizer = Esapi.Randomizer;
            string randomInteger = "";
            int min = 0, max = 0;

            if (!String.IsNullOrEmpty(txtMax.Text) && !String.IsNullOrEmpty(txtMin.Text))
            {
                min = int.Parse(txtMin.Text);
                max = int.Parse(txtMax.Text);
            }
            randomInteger = randomizer.GetRandomInteger(min, max).ToString();
            lblRandomInteger.Text = randomInteger;
        }

        protected void getRandomLong(object sender, EventArgs e)
        {
            IRandomizer randomizer = Esapi.Randomizer;
            long randomLong = 0;
            randomLong = randomizer.GetRandomLong();                
            lblRandomLong.Text = randomLong.ToString();
        }

        protected void getRandomReal(object sender, EventArgs e)
        {
            IRandomizer randomizer = Esapi.Randomizer;
            float minFloat = 0, maxFloat = 0; 
            string randomReal = "";

            if (!String.IsNullOrEmpty(txtMinFloat.Text) && !String.IsNullOrEmpty(txtMaxFloat.Text))
            {
                minFloat = float.Parse(txtMinFloat.Text);
                maxFloat = float.Parse(txtMaxFloat.Text);
                randomReal = randomizer.GetRandomReal(minFloat, maxFloat).ToString();
            }

            lblRandomReal.Text = randomReal;
        }

        protected void getRandomString(object sender, EventArgs e)
        {
            IRandomizer randomizer = Esapi.Randomizer;
            int length = 0;
            string randomString = "";

            if(!String.IsNullOrEmpty(txtCharSet.Text)  && !String.IsNullOrEmpty(txtLength.Text))
            {
                char[] charSet = txtCharSet.Text.ToCharArray();
                length = int.Parse(txtLength.Text);
                randomString = randomizer.GetRandomString(length, charSet);
            }

            lblRandomString.Text = randomString;
        }



    }
}
