using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PruebaDesarrollo_Viamatica
{
    public partial class frmMenu : Form
    {
        public frmMenu()
        {
            InitializeComponent();
        }

        private void btnEjercicio1_Click(object sender, EventArgs e)
        {
            frmEjercicio1 frmEjercicio1 = new frmEjercicio1();
            frmEjercicio1.ShowDialog();

        }

        private void btnEjercicio2_3_Click(object sender, EventArgs e)
        {
            frmEjercicio2_3 frmEjercicio2_3 = new frmEjercicio2_3();
            frmEjercicio2_3.ShowDialog();
        }
    }
}
