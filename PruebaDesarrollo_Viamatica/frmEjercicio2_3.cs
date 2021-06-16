using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PruebaDesarrollo_Viamatica
{
    
    public partial class frmEjercicio2_3 : Form
    {
        Ejercicios ejercicios;
        ConnectionStringSettings connectionStringSettings;
        public frmEjercicio2_3()
        {
            InitializeComponent();
            connectionStringSettings = ConfigurationManager.ConnectionStrings["dbConnection"];
            ejercicios = new Ejercicios(connectionStringSettings.ConnectionString);
        }

        private void frmEjercicio2_3_Load(object sender, EventArgs e)
        {
            dgvEjercicio2.DataSource = ejercicios.Excercise2Data();
        }

        private void dgvEjercicio2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            dgvEjercicio3.DataSource = ejercicios.Excercise3Data(dgvEjercicio2[1, e.RowIndex].Value.ToString());
        }
    }
}
