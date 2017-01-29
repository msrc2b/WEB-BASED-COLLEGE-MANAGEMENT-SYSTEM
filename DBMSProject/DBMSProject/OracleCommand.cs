using System;
using System.Data;

namespace DBMSProject
{
    internal class OracleCommand
    {
        private string v;

        public OracleCommand()
        {
        }

        public OracleCommand(string v, OracleConnection connection)
        {
            this.v = v;
            Connection = connection;
        }

        public string CommandText { get; internal set; }
        public CommandType CommandType { get; internal set; }
        public OracleConnection Connection { get; internal set; }
        public object Parameters { get; internal set; }

        internal void ExecuteNonQuery()
        {
            throw new NotImplementedException();
        }
    }
}