using DAL;
using DAL.DataOperations;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Ejercicios
    {
        private Connection connection;
        private ViamaticaTest viamaticaTest;

        public Ejercicios(string url)
        {
            connection = new Connection(url);
            viamaticaTest = new ViamaticaTest(connection);
        }

        public void Create(string nomPersona, string fecNacimiento, int codZona, decimal sueldo)
        {
            try
            {
                viamaticaTest.CreatePerson(nomPersona, fecNacimiento, codZona, sueldo);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al registrar la persona... " + ex.Message.ToString());
                throw;
            }
        }

        public DataTable GetAllSectors()
        {
            return viamaticaTest.GetDataTableFromQuery("select * from tbl_sector");
        }

        public DataTable GetAllZonesFromSector(int sectorId)
        {
            return viamaticaTest.GetDataTableFromQuery(String.Format("select * from tbl_zona where cod_sector = {0}", sectorId));
        }

        public DataTable Excercise2Data()
        {
            return viamaticaTest.GetDataTableFromSp("spEjercicio2");
        }

        public DataTable Excercise3Data(string value)
        {
            return viamaticaTest.GetDataTableFromSpWhitP("spEjercicio3", value);
        }
    }
}
