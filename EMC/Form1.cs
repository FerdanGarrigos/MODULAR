using System.Windows.Forms;

namespace EMC
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, System.EventArgs e)
        {
            Form Menu = new Menu();
            Form login = new login();

            if (!textBox1.Text.Equals("admin"))
            {
                MessageBox.Show("Usuario incorrecto, intente de nuevo.");

            }
            else
            {
                if (!textBox2.Text.Equals("pass"))
                {
                    MessageBox.Show("Contraseña incorrecta, intente de nuevo.");
                }
                else
                {
                    Menu.Show();
                    this.Hide();
                }

                



            }

        }

        private void button2_Click(object sender, System.EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox1.Focus();
        }
    }

}
