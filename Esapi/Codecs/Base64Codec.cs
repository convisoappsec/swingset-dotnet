using System;
using Owasp.Esapi.Interfaces;
using System.Text;

namespace Owasp.Esapi.Codecs
{
    /// <summary>
    /// This class performs Base64 encoding and decoding.
    /// </summary>
    [Codec(BuiltinCodecs.Base64)]
    public class Base64Codec : ICodec
    {
        #region ICodec Members

        /// <summary>
        /// Encode the input to a Base64 value.
        /// </summary>
        /// <param name="input">The string to encode.</param>
        /// <returns>The encoded string.</returns>
        public string Encode(string input)
        {
            byte[] inputBytes = Encoding.GetEncoding(Esapi.SecurityConfiguration.CharacterEncoding).GetBytes(input);
            return Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(input));
        }

        /// <summary>
        /// Decode the input from a Base64 value.
        /// </summary>
        /// <param name="input">The string to decode/</param>
        /// <returns>The decoded string.</returns>
        public string Decode(string input)
        {
            String data = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(input));
            byte[] inputBytes = Convert.FromBase64String(data);
            return Encoding.GetEncoding(Esapi.SecurityConfiguration.CharacterEncoding).GetString(inputBytes);
        }

        #endregion
    }
}
