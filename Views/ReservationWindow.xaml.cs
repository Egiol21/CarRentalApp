using System;
using System.Linq;
using System.Windows;
using CarRentalApp.Data;
using CarRentalApp.Models;
using System.Collections.Generic;

namespace CarRentalApp.Views
{
    public partial class ReservationWindow : Window
    {
        private List<Car> availableCars;

        public ReservationWindow()
        {
            InitializeComponent();
            LoadCustomers();
        }

        private void LoadCustomers()
        {
            using var db = new AppDbContext();
            CustomerBox.ItemsSource = db.Customers.ToList();
        }

        private void CheckAvailability_Click(object sender, RoutedEventArgs e)
        {
            DateTime? start = StartDatePicker.SelectedDate;
            DateTime? end = EndDatePicker.SelectedDate;

            if (start == null || end == null || end <= start)
            {
                MessageBox.Show("Select a valid start and end date.");
                return;
            }

            using var db = new AppDbContext();
            var overlapping = db.Rentals
                .Where(r => !(r.EndDate < start || r.StartDate > end))
                .Select(r => r.CarId)
                .ToList();

            availableCars = db.Cars
                .Where(c => !overlapping.Contains(c.Id) && c.IsAvailable)
                .ToList();

            AvailableCarsList.ItemsSource = availableCars;
        }

        private void Reserve_Click(object sender, RoutedEventArgs e)
        {
            var selectedCar = AvailableCarsList.SelectedItem as Car;
            var selectedCustomer = CustomerBox.SelectedItem as Customer;
            var start = StartDatePicker.SelectedDate;
            var end = EndDatePicker.SelectedDate;

            if (selectedCar == null || selectedCustomer == null || start == null || end == null)
            {
                MessageBox.Show("All fields must be selected.");
                return;
            }

            using var db = new AppDbContext();
            var rental = new Rental
            {
                CarId = selectedCar.Id,
                CustomerId = selectedCustomer.Id,
                StartDate = start.Value,
                EndDate = end.Value
            };

            db.Rentals.Add(rental);
            db.SaveChanges();

            MessageBox.Show("Reservation completed.");
            this.Close();
        }
    }
}
