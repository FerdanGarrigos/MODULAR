using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//////////////////////////////////
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace c_sahrp
{
    class combobox
    {
        MySqlConnection con = new MySqlConnection("server=localhost; port=3306; username=root; password=");

        public void seleccionar(ComboBox cb)
        {
            cb.Items.Clear();
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from emc.cliente", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cb.Items.Add(dr[1].ToString());
            }
            con.Close();
            cb.Items.Insert(0, "--- Seleccione un item ---");
            cb.SelectedIndex = 0;
        }

        public void seleccionarequipo(ComboBox cb)
        {
            cb.Items.Clear();
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from emc.equipodegeneracion", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cb.Items.Add(dr[3].ToString());
            }
            con.Close();
            cb.Items.Insert(0, "--- Seleccione un item ---");
            cb.SelectedIndex = 0;
        }





        public string[] captar_info(string nombre)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from emc.cliente where nombre='" + nombre + "'", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            string[] resultado = null;
            while (dr.Read())
            {
                string[] valores =
                {
                    dr[0].ToString(),
                    dr[2].ToString(),
                    dr[3].ToString()
                };
                resultado = valores;
            }
            con.Close();
            return resultado;
        }

        public string[] captar_infoequipo(string nombre)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from emc.equipodegeneracion where nombre='" + nombre + "'", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            string[] resultado = null;
            while (dr.Read())
            {
                string[] valores =
                {
                    dr[0].ToString(),
                    dr[2].ToString(),
                    dr[4].ToString()
                };
                resultado = valores;
            }
            con.Close();
            return resultado;
        }
    }
}