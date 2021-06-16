
namespace PruebaDesarrollo_Viamatica
{
    partial class frmEjercicio2_3
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvEjercicio2 = new System.Windows.Forms.DataGridView();
            this.dgvEjercicio3 = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEjercicio2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEjercicio3)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvEjercicio2
            // 
            this.dgvEjercicio2.AllowUserToAddRows = false;
            this.dgvEjercicio2.AllowUserToDeleteRows = false;
            this.dgvEjercicio2.AllowUserToResizeColumns = false;
            this.dgvEjercicio2.AllowUserToResizeRows = false;
            this.dgvEjercicio2.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvEjercicio2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEjercicio2.Location = new System.Drawing.Point(12, 12);
            this.dgvEjercicio2.MultiSelect = false;
            this.dgvEjercicio2.Name = "dgvEjercicio2";
            this.dgvEjercicio2.RowHeadersVisible = false;
            this.dgvEjercicio2.RowTemplate.Height = 25;
            this.dgvEjercicio2.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvEjercicio2.Size = new System.Drawing.Size(491, 150);
            this.dgvEjercicio2.TabIndex = 0;
            this.dgvEjercicio2.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEjercicio2_CellClick);
            // 
            // dgvEjercicio3
            // 
            this.dgvEjercicio3.AllowUserToAddRows = false;
            this.dgvEjercicio3.AllowUserToDeleteRows = false;
            this.dgvEjercicio3.AllowUserToResizeColumns = false;
            this.dgvEjercicio3.AllowUserToResizeRows = false;
            this.dgvEjercicio3.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvEjercicio3.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEjercicio3.Location = new System.Drawing.Point(6, 22);
            this.dgvEjercicio3.MultiSelect = false;
            this.dgvEjercicio3.Name = "dgvEjercicio3";
            this.dgvEjercicio3.RowHeadersVisible = false;
            this.dgvEjercicio3.RowTemplate.Height = 25;
            this.dgvEjercicio3.Size = new System.Drawing.Size(479, 150);
            this.dgvEjercicio3.TabIndex = 1;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvEjercicio3);
            this.groupBox1.Location = new System.Drawing.Point(12, 168);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(491, 182);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Resultados";
            // 
            // frmEjercicio2_3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(515, 360);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvEjercicio2);
            this.Name = "frmEjercicio2_3";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = ".:.Ejercicio 2 - 3.:.";
            this.Load += new System.EventHandler(this.frmEjercicio2_3_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvEjercicio2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEjercicio3)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvEjercicio2;
        private System.Windows.Forms.DataGridView dgvEjercicio3;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}