using BLL;
using System;
using System.Configuration;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PruebaDesarrollo_Viamatica
{
    public partial class frmEjercicio1 : Form
    {
        Ejercicios ejercicios;
        ConnectionStringSettings connectionStringSettings;
        public frmEjercicio1()
        {
            InitializeComponent();
            connectionStringSettings = ConfigurationManager.ConnectionStrings["dbConnection"];
            ejercicios = new Ejercicios(connectionStringSettings.ConnectionString);
        }

        private void btnGrabar_Click(object sender, EventArgs e)
        {
            dtpFechaNacimiento.CustomFormat = "MM/dd/yyyy";
            ejercicios.Create(txtNombre.Text, dtpFechaNacimiento.Value.ToString(), int.Parse(cboZona.Text), Decimal.Parse(txtSueldo.Text));
        }

        private void frmEjercicio1_Load(object sender, EventArgs e)
        {
            cboSector.DataSource = ejercicios.GetAllSectors();
            cboSector.ValueMember = "cod_sector";
            cboSector.DisplayMember = "des_sector";
            cboSector.SelectedIndex = 0;
        }

        private void cboSector_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void cboSector_SelectionChangeCommitted(object sender, EventArgs e)
        {
            cboZona.DataSource = ejercicios.GetAllZonesFromSector(int.Parse(cboSector.SelectedValue.ToString()));
            cboZona.ValueMember = "cod_zona";
            cboZona.DisplayMember = "des_zona";
        }
    }
}
