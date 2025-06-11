using System.Windows;

namespace CarRentalApp.Views
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void OpenCarManagement(object sender, RoutedEventArgs e)
        {
            new CarManagementWindow().ShowDialog();
        }

        private void OpenCustomerManagement(object sender, RoutedEventArgs e)
        {
            new CustomerManagementWindow().ShowDialog();
        }

        private void OpenReservationWindow(object sender, RoutedEventArgs e)
        {
            new ReservationWindow().ShowDialog();
        }
    }
}
