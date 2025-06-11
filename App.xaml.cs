using CarRentalApp.Data;
using CarRentalApp.Models;
using CarRentalApp.Views;
using System;
using System.Linq;
using System.Windows;

namespace CarRentalApp
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            using (var db = new AppDbContext())
            {
                db.Database.EnsureCreated();

                if (!db.Users.Any())
                {
                    db.Users.Add(new User { Username = "admin", Password = "1234", Role = "Admin" });
                    db.SaveChanges();
                }

                if (!db.Cars.Any())
                {
                    db.Cars.AddRange(new[]
                    {
                        new Car { Brand = "Toyota", Model = "Corolla", PlateNumber = "AA123AA", IsAvailable = true },
                        new Car { Brand = "BMW", Model = "X5", PlateNumber = "BB123BB", IsAvailable = true },
                        new Car { Brand = "Audi", Model = "A4", PlateNumber = "CC456CC", IsAvailable = true },
                        new Car { Brand = "Mercedes", Model = "C-Class", PlateNumber = "DD789DD", IsAvailable = true },
                        new Car { Brand = "Volkswagen", Model = "Golf", PlateNumber = "EE321EE", IsAvailable = true }
                    });

                    db.SaveChanges();
                }
            }

            new LoginWindow().Show();
        }
    }
}
