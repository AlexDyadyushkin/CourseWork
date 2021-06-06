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
    /// Логика взаимодействия для PageAddEditConfigurations.xaml
    /// </summary>
    public partial class PageAddEditConfigurations : Page
    {
        private Configuration _currentConf = new Configuration();
        public PageAddEditConfigurations(Configuration selectedConf)
        {
            InitializeComponent();
            if (selectedConf != null)
                _currentConf = selectedConf;

            DataContext = _currentConf;
            cbClients.ItemsSource = bdAvtoLiderEntities.GetContext().Clients.ToList();
            cbModels.ItemsSource = bdAvtoLiderEntities.GetContext().Cars.ToList();
            cbRims.ItemsSource = bdAvtoLiderEntities.GetContext().TypesOfRims.ToList();
            cbCover.ItemsSource = bdAvtoLiderEntities.GetContext().TypesOfCover.ToList();
            cbTires.ItemsSource = bdAvtoLiderEntities.GetContext().TypesOfTires.ToList();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();


            if (cbClients.Text.Length == 0)
                errors.AppendLine("Укажите фамилию клиента");
            if (cbModels.Text.Length == 0)
                errors.AppendLine("Укажите модель автомобиля");
            if (cbRims.Text.Length == 0)
                errors.AppendLine("Укажите тип дисков автомобиля");
            if (cbCover.Text.Length == 0)
                errors.AppendLine("Укажите тип покрытия автомобиля");
            if (cbTires.Text.Length == 0)
                errors.AppendLine("Укажите тип шин автомобиля");           
            if (string.IsNullOrWhiteSpace(_currentConf.Color))
                errors.AppendLine("Укажите цвет автомобиля");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentConf.Id == 0)
                bdAvtoLiderEntities.GetContext().Configuration.Add(_currentConf);

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
