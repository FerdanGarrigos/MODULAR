using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace EMC
{
    public partial class Consulta : Form
    {

        MySqlConnection connection = new MySqlConnection("server=localhost; port=3306; username=root; password=");
        MySqlCommand command;

        public void openConnection()
        {
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
        }

        public void closeConnection()
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }


        public void executeQuery(String query)
        {
            try
            {
                openConnection();
                command = new MySqlCommand(query, connection);
                if (command.ExecuteNonQuery() == 1)
                {
                    MessageBox.Show("Con exito");
                }
                else
                {
                    MessageBox.Show("Sin exito");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                closeConnection();
            }
        }


        public Consulta()
        {
            InitializeComponent();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form consulta = new Consulta();
            Form menu = new Menu();
            this.Close();
            menu.Show();
        }


        private void button21_Click(object sender, EventArgs e)
        {
            //Tabla CLIENTE
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.cliente";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView1.DataSource = dset.Tables[0];
            }
        }

        private void button41_Click(object sender, EventArgs e)
        {
            //tabla telefonos
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.telefonos";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView1.DataSource = dset.Tables[0];

            }
        }

        private void button42_Click(object sender, EventArgs e)
        {
            //Tabla correos
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.correo";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView1.DataSource = dset.Tables[0];
            }
        }

        private void button20_Click(object sender, EventArgs e)
        {
            //TABLA EQUIPO DE GENERACION (DATOS DEL EQUIPO)

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.equipodegeneracion";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView2.DataSource = dset.Tables[0];
            }
        }

        private void button22_Click(object sender, EventArgs e)
        {
            //Tabla PANEL DE TRANSFERENCIA
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.paneltransferencia";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView3.DataSource = dset.Tables[0];
            }
        }

        private void button43_Click(object sender, EventArgs e)
        {
            //TABLA DE GENERACION
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.generador";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView3.DataSource = dset.Tables[0];
            }
        }

        private void button23_Click(object sender, EventArgs e)
        {
            //tabla de motores
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.motores";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView4.DataSource = dset.Tables[0];
            }
        }

        private void button24_Click(object sender, EventArgs e)
        {
            //tabla de filtro de AGUA
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroagua";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }
        }

        private void button44_Click(object sender, EventArgs e)
        {
            //tabla de filtro de ACEITE
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroaceite";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
                //tabla de filtro de COMBUSTIBLE
                MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

                string query = "select * from emc.filtrocombustible";

                using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
                {

                    DataSet dset = new DataSet();

                    adpt.Fill(dset);

                    dataGridView6.DataSource = dset.Tables[0];
                }
         }
    

        private void button1_Click(object sender, EventArgs e)
        {
            //tabla de filtro de AIRE
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroaire";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView6.DataSource = dset.Tables[0];
            }
        }

    }
}
