using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Connection
    {
        private SqlConnection sqlConnection;

        public SqlConnection SqlConnection { get => sqlConnection; set => sqlConnection = value; }


        //The url parameter will be obtained from App.config file
        public Connection(string url)
        {
            try
            {
                SqlConnection = new SqlConnection(url);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al implementar la conexión... " + ex.Message.ToString());
                throw;
            }
        }

        //These methods will be used to ensure the opening and closing of the sqlConnection
        #region 
        public void OpenConnection()
        {
            try
            {
                SqlConnection.Close();
                SqlConnection.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al abrir la conexión... " + ex.Message.ToString());
                throw;
            }
        }

        public void CloseConnection()
        {
            try
            {
                SqlConnection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al cerrar la conexión... " + ex.Message.ToString());
                throw;
            }
        }
        #endregion

    }
}
