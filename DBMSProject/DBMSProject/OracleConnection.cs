using System;

namespace DBMSProject
{
    internal class OracleConnection
    {
        private string oradb;

        public OracleConnection()
        {
        }

        public OracleConnection(string oradb)
        {
            this.oradb = oradb;
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }

        internal void Close()
        {
            throw new NotImplementedException();
        }
    }
}