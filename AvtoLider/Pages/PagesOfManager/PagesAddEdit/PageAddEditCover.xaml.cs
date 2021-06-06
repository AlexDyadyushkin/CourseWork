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
    /// Логика взаимодействия для PageAddEditCover.xaml
    /// </summary>
    public partial class PageAddEditCover : Page
    {
        private TypesOfCover _currentCover = new TypesOfCover();
        public PageAddEditCover(TypesOfCover selectedCover)
        {
            InitializeComponent();
            if (selectedCover != null)
                _currentCover = selectedCover;

            DataContext = _currentCover;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentCover.Title))
                errors.AppendLine("Укажите название покрытия");           

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentCover.Id == 0)
                bdAvtoLiderEntities.GetContext().TypesOfCover.Add(_currentCover);

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
