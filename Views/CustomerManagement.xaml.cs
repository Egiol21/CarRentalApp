using System.Windows;
using CarRentalApp.Data;
using CarRentalApp.Models;
using System.Linq;

namespace CarRentalApp.Views
{
    public partial class CustomerManagementWindow : Window
    {
        public CustomerManagementWindow()
        {
            InitializeComponent();
            LoadCustomers();
        }

        private void LoadCustomers()
        {
            using var db = new AppDbContext();
            CustomerGrid.ItemsSource = db.Customers.ToList();
        }

        private void AddCustomer_Click(object sender, RoutedEventArgs e)
        {
            var name = NameBox.Text.Trim();
            var email = EmailBox.Text.Trim();
            var phone = PhoneBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(name) ||
                string.IsNullOrWhiteSpace(email) ||
                string.IsNullOrWhiteSpace(phone))
            {
                MessageBox.Show("All fields are required.");
                return;
            }

            using var db = new AppDbContext();
            db.Customers.Add(new Customer
            {
                FullName = name,
                Email = email,
                Phone = phone
            });
            db.SaveChanges();

            LoadCustomers();
            NameBox.Clear();
            EmailBox.Clear();
            PhoneBox.Clear();
        }
    }
}
