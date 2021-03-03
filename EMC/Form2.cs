using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EMC
{
    public partial class Menu : Form
    {

        public Menu()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void Button1_Click(object sender, EventArgs e)
        {
            
            Form consulta = new Consulta();
            Form menu = new Menu();
            this.Close();
            consulta.Show();
            
        }
        private void button2_Click(object sender, EventArgs e)
        {
            Form reportes = new Reportes();
            Form menu = new Menu();
            this.Close();
            reportes.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form login = new login();
            Form menu = new Menu();

            login.Show();
            this.Hide();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form CRUD = new CRUD();
            Form menu = new Menu();

            this.Hide();
            CRUD.Show();
        }
    }
}
