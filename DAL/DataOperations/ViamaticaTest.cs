using System.Data.SqlClient;
using System.Data;
using System;

namespace DAL.DataOperations
{
    public class ViamaticaTest
    {
        private Connection connection;

        public ViamaticaTest(Connection connection)
        {
            this.connection = connection;
        }

        public int CreatePerson(string nomPersona, string fecNacimiento, int codZona, decimal sueldo)
        {
            using (SqlCommand cmd = new SqlCommand("spCreatePerson", connection.SqlConnection))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@nom_persona", SqlDbType.VarChar).Value = nomPersona;
                cmd.Parameters.Add("@fec_nacimiento", SqlDbType.Date).Value = fecNacimiento;
                cmd.Parameters.Add("@cod_zona", SqlDbType.Int).Value = codZona;
                cmd.Parameters.Add("@sueldo", SqlDbType.Decimal).Value = Decimal.Round(sueldo, 2);

                connection.OpenConnection();

                return (int)cmd.ExecuteScalar();
            }
        }

        public DataTable GetDataTableFromQuery (string query)
        {
            DataTable operationDataTable = new DataTable();
            SqlDataAdapter operationDataAdapter;
            connection.OpenConnection();

            SqlCommand cmd = new SqlCommand(query, connection.SqlConnection);
            //Getting the data
            operationDataAdapter = new SqlDataAdapter(cmd);
            //Adding the obtained data to operationDataTable
            operationDataAdapter.Fill(operationDataTable);

            connection.CloseConnection();

            return operationDataTable;
        }

        public DataTable GetDataTableFromSp(string spToExecute)
        {
            connection.OpenConnection();
            DataTable operationDataTable = new DataTable();
            using (SqlDataAdapter da = new SqlDataAdapter(spToExecute, connection.SqlConnection))
            {
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.Fill(operationDataTable);
            }

            connection.CloseConnection();

            return operationDataTable;
        }

        public DataTable GetDataTableFromSpWhitP(string spToExecute, string value)
        {
            DataTable operationDataTable = new DataTable();
            SqlDataAdapter operationDataAdapter;
            using (SqlCommand cmd = new SqlCommand(spToExecute, connection.SqlConnection))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@des_zona", SqlDbType.VarChar).Value = value;

                connection.OpenConnection();

                //Getting the data
                operationDataAdapter = new SqlDataAdapter(cmd);
                //Adding the obtained data to operationDataTable
                operationDataAdapter.Fill(operationDataTable);

                connection.CloseConnection();
            }

            return operationDataTable;
        }

    }
}
