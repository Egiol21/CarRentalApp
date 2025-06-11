using System.Windows;
using CarRentalApp.Data;
using CarRentalApp.Models;
using System.Linq;

namespace CarRentalApp.Views
{
    public partial class CarManagementWindow : Window
    {
        public CarManagementWindow()
        {
            InitializeComponent();
            LoadCars();
        }

        private void LoadCars()
        {
            using var db = new AppDbContext();
            CarGrid.ItemsSource = db.Cars.ToList();
        }

        private void AddCar_Click(object sender, RoutedEventArgs e)
        {
            var brand = BrandBox.Text.Trim();
            var model = ModelBox.Text.Trim();
            var plate = PlateBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(brand) || string.IsNullOrWhiteSpace(model) || string.IsNullOrWhiteSpace(plate))
            {
                MessageBox.Show("All fields are required.");
                return;
            }

            using var db = new AppDbContext();
            db.Cars.Add(new Car { Brand = brand, Model = model, PlateNumber = plate, IsAvailable = true });
            db.SaveChanges();

            LoadCars();
            BrandBox.Clear();
            ModelBox.Clear();
            PlateBox.Clear();
        }
    }
}
