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
    /// Логика взаимодействия для PageAddEditTires.xaml
    /// </summary>
    public partial class PageAddEditTires : Page
    {
        private TypesOfTires _currentTires = new TypesOfTires();
        public PageAddEditTires(TypesOfTires selectedTires)
        {
            InitializeComponent();
            if (selectedTires != null)
                _currentTires = selectedTires;

            DataContext = _currentTires;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentTires.Title))
                errors.AppendLine("Укажите название покрытия");
            if (_currentTires.Price == 0)
                errors.AppendLine("Укажите цену покрытия");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentTires.Id == 0)
                bdAvtoLiderEntities.GetContext().TypesOfTires.Add(_currentTires);

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
