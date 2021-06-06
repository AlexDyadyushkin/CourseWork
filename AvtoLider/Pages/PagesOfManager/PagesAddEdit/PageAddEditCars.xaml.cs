using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using AvtoLider.Clases;
using AvtoLider.Models;

namespace AvtoLider.Pages.PagesOfManager.PagesAddEdit
{
    /// <summary>
    /// Логика взаимодействия для PageAddEditCars.xaml
    /// </summary>
    public partial class PageAddEditCars : Page
    {
        private Cars _currentCars = new Cars();
        public PageAddEditCars(Cars selectedCars)
        {
            InitializeComponent();
            if (selectedCars != null)
                _currentCars = selectedCars;

            DataContext = _currentCars;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentCars.Brand))
                errors.AppendLine("Укажите марку автомобиля");
            if (string.IsNullOrWhiteSpace(_currentCars.Model))
                errors.AppendLine("Укажите модель автомобиля");
            if (tbPrice.Text.Length == 0)
                errors.AppendLine("Укажите цену автомобиля");
            if (tbAmount.Text.Length == 0)
                errors.AppendLine("Укажите количество автомобилей");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentCars.Id == 0)
                bdAvtoLiderEntities.GetContext().Cars.Add(_currentCars);

            try
            {
                bdAvtoLiderEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
                ClassManager.BaseFrame.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            var result = MessageBox.Show("Вы точно хотите отменить изменения?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                ClassManager.BaseFrame.GoBack();
            }
            else
            {
                return;
            }
        }
    }
}
