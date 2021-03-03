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
    public partial class CRUD : Form
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
                if (command.ExecuteNonQuery() == 0)
                {
                    MessageBox.Show("Con exito");
                }
                else
                {
                    MessageBox.Show("Con exito, pero se recomienda revisar la consulta");
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

        public CRUD()
        {
            InitializeComponent();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Form CRUD = new CRUD();
            Form menu = new Menu();

            menu.Show();
            this.Hide();
        }

        // BOTONES ALTA


        private void button1_Click(object sender, EventArgs e)
        {
            string Cliente = "INSERT INTO emc.cliente(Id, Nombre, Direccion, Ciudad) VALUES('" + textBox1.Text + "','" + comboBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "'); ";
            //Ejecucion
            executeQuery(Cliente);


            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.cliente";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView1.DataSource = dset.Tables[0];
            }



            
        }






        private void button8_Click(object sender, EventArgs e)
        {
            string Telefono = "INSERT INTO emc.telefonos(Secuencia, Telefono, cliente_Id) VALUES('" + comboBox2.Text + "','" + textBox4.Text + "','" + textBox1.Text + "');";
            executeQuery(Telefono);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.telefonos";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView1.DataSource = dset.Tables[0];

            }

            
        }



        private void button13_Click_1(object sender, EventArgs e)
        {
            string Correo = "INSERT INTO emc.correo(Secuencia, Correo, cliente_Id) VALUES('" + comboBox3.Text + "','" + textBox5.Text + "','" + textBox1.Text + "');";
            executeQuery(Correo);


            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.correo";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView1.DataSource = dset.Tables[0];
            }
        }



        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {
            string Equipodegeneracion = "INSERT INTO emc.equipodegeneracion(Numero, Nombre, Ubicacion, cliente_Id) VALUES('" + comboBox6.Text + "','" + comboBox7.Text + "','" + textBox8.Text + "','" + textBox1.Text + "');";
            executeQuery(Equipodegeneracion);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.equipodegeneracion";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView2.DataSource = dset.Tables[0];
            }
        }

        private void button28_Click(object sender, EventArgs e)
        {
            string Motores = "INSERT INTO emc.motores(Marca, Modelo, AmperajeBateria, VoltajeBaterias, Combustible, NumeroCilindros, equipodegeneracion_Id) VALUES('" + textBox24.Text + "','" + textBox25.Text + "','" + textBox20.Text + "','" + comboBox21.Text + "','" + comboBox22.Text + "','" + comboBox23.Text + "','" + comboBox10.Text + "');";
            executeQuery(Motores);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.motores";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView4.DataSource = dset.Tables[0];
            }
        }

        private void CRUD_Load(object sender, EventArgs e)
        {

        }

        private void button19_Click(object sender, EventArgs e)
        {
            string Telefono = "INSERT INTO emc.paneltransferencia(Marca, Modelo, Capacidad, equipodegeneracion_id) VALUES('" + textBox110.Text + "','" + textBox120.Text + "','" + textBox130.Text + "','" + comboBox10.Text + "');";
            executeQuery(Telefono);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.paneltransferencia";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView3.DataSource = dset.Tables[0];
            }
        }

        private void button16_Click(object sender, EventArgs e)
        {

            string Generador = "INSERT INTO emc.generador(Marca, Modelo, Capacidad, Voltaje, equipodegeneracion_id) VALUES('" + textBox1100.Text + "','" + textBox1200.Text + "','" + textBox1300.Text + "','" + textBox1400.Text + "','" + comboBox10.Text + "');";
            executeQuery(Generador);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.generador";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView3.DataSource = dset.Tables[0];
            }
        }

        private void button40_Click(object sender, EventArgs e)
        {
            string Generador = "INSERT INTO emc.filtroagua(Numero,FiltroAgua, motores_id) VALUES('" + comboBox41.Text + "','" + textBox101.Text + "','" + comboBox100.Text + "');";
            executeQuery(Generador);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroagua";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }
        }


        private void button37_Click(object sender, EventArgs e)
        {
            string Generador = "INSERT INTO emc.filtroaceite(Numero,FiltroAceite, motores_id) VALUES('" + comboBox42.Text + "','" + textBox102.Text + "','" + comboBox100.Text + "');";
            executeQuery(Generador);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroaceite";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }
        }

        private void button34_Click(object sender, EventArgs e)
        {
            string Generador = "INSERT INTO emc.filtrocombustible(Numero,FiltroCombustible, motores_id) VALUES('" + comboBox42.Text + "','" + textBox102.Text + "','" + comboBox100.Text + "');";
            executeQuery(Generador);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtrocombustible";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }

        }


        private void button31_Click(object sender, EventArgs e)
        {
            string Generador = "INSERT INTO emc.filtroaire(Numero,FiltroAire, motores_id) VALUES('" + comboBox43.Text + "','" + textBox103.Text + "','" + comboBox100.Text + "');";
            executeQuery(Generador);

            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroaire";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }


        }


        //ACTUALIZAR

  




        //BORRAR

        /*string deleteQuery = "DELETE FROM tienda.productos WHERE id = " + textBox1.Text;
        executeQuery(deleteQuery);*/

        // VER TABLAS



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


        
        private void button20_Click_1(object sender, EventArgs e)
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
        //tabla de filtros
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

        private void button45_Click(object sender, EventArgs e)
        {
            //tabla de filtro de COMBUSTIBLE
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtrocombustible";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }
        }

        private void button46_Click(object sender, EventArgs e)
        {
            //tabla de filtro de AIRE
            MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

            string query = "select * from emc.filtroaire";

            using (MySqlDataAdapter adpt = new MySqlDataAdapter(query, con))
            {

                DataSet dset = new DataSet();

                adpt.Fill(dset);

                dataGridView5.DataSource = dset.Tables[0];
            }
        }


        //UPDATEEEEE Falta acomodar los combobox y textbox **agregar id por cada tabla

        private void button2_Click(object sender, EventArgs e)
        {
            /*string updateQuery = "UPDATE tienda.productos SET Nombre='" + textBox2.Text + "', descripcion='" + textBox4.Text + "', precio=" + textBox3.Text + " WHERE id = " + textBox1.Text;
      executeQuery(updateQuery); */

                                        /*UPDATE `cliente` SET `Nombre`= 2,`Direccion`= 3,`Ciudad`= 4 WHERE Id = 1*/

            string updateQueryCLIENTES = "UPDATE emc.cliente SET Nombre=' " + comboBox1.Text + "', Direccion='" + textBox2.Text + "', Ciudad='" + textBox3.Text + "' WHERE Id = " + textBox1.Text;
      executeQuery(updateQueryCLIENTES);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            string updateQueryTELEFONOS = "UPDATE emc.telefonos SET Secuencia=' " + comboBox2.Text + "', Telefono='" + textBox4.Text + "' WHERE Id = " + textBox1.Text;
            executeQuery(updateQueryTELEFONOS);
        }

        private void button12_Click(object sender, EventArgs e)
        {
            string updateQueryCORREO = "UPDATE emc.correo SET Secuencia=' " + comboBox3.Text + "', Correo='" + textBox5.Text + "' WHERE Id = " + textBox1.Text;
            executeQuery(updateQueryCORREO);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            string updateQueryequipodegeneracion = "UPDATE emc.equipodegeneracion SET Numero='" + comboBox6.Text + "', Nombre='" + comboBox7.Text + "', Ubicacion='" + textBox8.Text + "' WHERE Id = " + comboBox10.Text;
            executeQuery(updateQueryequipodegeneracion);
        }

        private void button18_Click(object sender, EventArgs e)
        {
            string updateQueryPanelTransferencia = "UPDATE emc.PanelTransferencia SET Marca='" + textBox110.Text + "', Modelo='" + textBox120.Text + "', Capacidad='" + textBox130.Text + "' WHERE Id = " + comboBox4.Text;
            executeQuery(updateQueryPanelTransferencia);
        }

        private void button15_Click(object sender, EventArgs e)
        {
            string updateQueryGenerador = "UPDATE emc.Generador SET Marca='" + textBox1100.Text + "', Modelo='" + textBox1200.Text + "', Capacidad='" + textBox1300.Text + "', Voltaje='" + textBox1400.Text + "' WHERE Id = " + comboBox4.Text;
            executeQuery(updateQueryGenerador);
        }

        private void button27_Click(object sender, EventArgs e)
        {
            string updateQueryMOTOR = "UPDATE emc.Motores SET Marca='" + textBox24.Text + "', Modelo='" + textBox25.Text + "', AmperajeBateria='" + textBox20.Text + "', VoltajeBaterias='" + comboBox21.Text + "', Combustible='" + comboBox22.Text + "', NumeroCilindros='" + comboBox23.Text + "' WHERE Id = " + comboBox100.Text;
            executeQuery(updateQueryMOTOR);
        }

        private void button39_Click(object sender, EventArgs e)
        {
            string updateQueryFILTROAGUA = "UPDATE emc.FiltroAgua SET Numero='" + comboBox41.Text + "', FiltroAgua='" + textBox101.Text + "' WHERE Id = " + comboBox5.Text;
            executeQuery(updateQueryFILTROAGUA);
        }

        private void button36_Click(object sender, EventArgs e)
        {
            string updateQueryFILTROACEITE = "UPDATE emc.FiltroAceite SET Numero='" + comboBox42.Text + "', FiltroAceite='" + textBox102.Text + "' WHERE Id = " + comboBox5.Text;
            executeQuery(updateQueryFILTROACEITE);
        }

        private void button33_Click(object sender, EventArgs e)
        {
            string updateQueryFILTROCOMBUSTIBLE = "UPDATE emc.FiltroCombustible SET Numero='" + comboBox43.Text + "', FiltroCombustible='" + textBox103.Text + "' WHERE Id = " + comboBox5.Text;
            executeQuery(updateQueryFILTROCOMBUSTIBLE);
        }

        private void button30_Click(object sender, EventArgs e)
        {
            string updateQueryFILTROAIRE = "UPDATE emc.FiltroAire SET Numero='" + comboBox44.Text + "', FiltroAire='" + textBox104.Text + "' WHERE Id = " + comboBox5.Text;
            executeQuery(updateQueryFILTROAIRE);
        }

        private void label60_Click(object sender, EventArgs e)
        {
            
        }
    }


   
    }
