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
using AvtoLider.Pages.PagesOfManager.PagesPartsConf;
using AvtoLider.Clases;
using AvtoLider.Models;

namespace AvtoLider.Pages.PagesOfManager
{
    /// <summary>
    /// Логика взаимодействия для PagePartsConf.xaml
    /// </summary>
    public partial class PagePartsConf : Page
    {
        public PagePartsConf()
        {
            InitializeComponent();
        }
       
        private void btnTires_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageTires());
        }

        private void btnCover_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageCover());
        }

        private void btnRims_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageRims());
        }
    }
}
