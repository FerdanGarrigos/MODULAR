using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using c_sahrp;
using MySql.Data.MySqlClient;


namespace EMC
{


    public partial class Reportes : Form
    {

        combobox combo = new combobox();
        


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

        public Reportes()
        {
          

            InitializeComponent();

            combo.seleccionar(comboBox1);
            combo.seleccionarequipo(comboBox2);
        }

        private void Form4_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
        
        }

        private void label24_Click(object sender, EventArgs e)
        {

        }

        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label14_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            

            //string insertQuery = "INSERT INTO BASEDEDATOS.TABLA(id, nombre, precio, descripcion) VALUES('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "')";

        }

        private void button5_Click(object sender, EventArgs e)
        {
            Form reportes = new Reportes();
            Form menu = new Menu();

            menu.Show();
            this.Hide();
        }

      

        private void button1_Click_1(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex > 0)
            {
                string[] valores = combo.captar_info(comboBox1.Text);
                lbid1.Text = valores[0];
                lbdireccion1.Text = valores[1];
                lbciudad1.Text = valores[2];
            }
        }

        private void label81_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox2.SelectedIndex > 0)
            {
                string[] valores = combo.captar_infoequipo(comboBox2.Text);
                lbid2.Text = valores[0];
                lbnum2.Text = valores[1];
                lbubi1.Text = valores[2];
            }
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {
            MessageBox.Show(
                "Datos registrados con exito reporte numero 5");
            
        }
    }
}
