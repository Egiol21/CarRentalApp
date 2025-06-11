using System.Windows;
using CarRentalApp.Data;
using System.Linq;

namespace CarRentalApp.Views
{
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            using var db = new AppDbContext();
            var user = db.Users.FirstOrDefault(u => u.Username == UsernameBox.Text && u.Password == PasswordBox.Password);
            if (user != null)
            {
                new MainWindow().Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Invalid username or password.");
            }
        }
    }
}
