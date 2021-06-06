﻿using System;
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
using AvtoLider.Pages;
using AvtoLider.Pages.PagesOfAdmin;
using AvtoLider.Pages.PagesOfManager;
using AvtoLider.Pages.PagesOfManager.PagesAddEdit;
using AvtoLider.Pages.PagesOfManager.PagesPartsConf;
using AvtoLider.Clases;

namespace AvtoLider
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class BaseWindow : Window
    {
        public BaseWindow()
        {
            InitializeComponent();
            baseFrame.Navigate(new PageAutorization());
            ClassManager.BaseFrame = baseFrame;
        }

        private void baseFrame_ContentRendered(object sender, EventArgs e)
        {
            if (baseFrame.CanGoBack)
            {
                ResizeMode = ResizeMode.CanResize;
                btnBack.Visibility = Visibility.Visible;
                tbUser.Text = "Пользователь: " + ClassManager.userName + " " + "(" + ClassManager.userRole + ")";
            }
            else
            {
                ResizeMode = ResizeMode.NoResize;
                WindowState = WindowState.Normal;
                btnBack.Visibility = Visibility.Collapsed;
                tbUser.Text = "";
            }
            if (baseFrame.Content.GetType().Name == "PageAutorization")
            {
                btnBack.Visibility = Visibility.Collapsed;
                tbSections.Visibility = Visibility.Collapsed;
                btnExitAccount.Visibility = Visibility.Collapsed;
                tbHeading.Text = "Автосалон АвтоЛидер";
                Height = 450;
                Width = 800;
            }
            else
            {
                tbSections.Visibility = Visibility.Visible;
                btnBack.Visibility = Visibility.Visible;
                btnExitAccount.Visibility = Visibility.Visible;               
                Height = 650;
                Width = 1000;
            } 
            if (baseFrame.Content.GetType().Name == "PageUsers" || baseFrame.Content.GetType().Name == "PageHistory")
            {
                btnToHistory.Visibility = Visibility.Visible;
                btnToUsers.Visibility = Visibility.Visible;
                tbHeading.Text = "Страница администратора";
            }
            else
            {
                btnToUsers.Visibility = Visibility.Collapsed;
                btnToHistory.Visibility = Visibility.Collapsed;
            }
           if (baseFrame.Content.GetType().Name == "PageCars" || baseFrame.Content.GetType().Name == "PageClients" || baseFrame.Content.GetType().Name == "PageConfiguration" || baseFrame.Content.GetType().Name == "PagePartsConf")
            {
                btnToClients.Visibility = Visibility.Visible;
                btnToCars.Visibility = Visibility.Visible;
                btnToConf.Visibility = Visibility.Visible;
                btnToPartsConf.Visibility = Visibility.Visible;
                tbHeading.Text = "Страница менеджера";
            }
            else
            {
                btnToClients.Visibility = Visibility.Collapsed;
                btnToCars.Visibility = Visibility.Collapsed;
                btnToConf.Visibility = Visibility.Collapsed;
                btnToPartsConf.Visibility = Visibility.Collapsed;
            }
            if (baseFrame.Content.GetType().Name == "PageAddEditUsers" || baseFrame.Content.GetType().Name == "PageAddEditCars" || baseFrame.Content.GetType().Name == "PageAddEditClients" || baseFrame.Content.GetType().Name == "PageAddEditConfigurations" || baseFrame.Content.GetType().Name == "PageAddEditCover" || baseFrame.Content.GetType().Name == "PageAddEditRims" || baseFrame.Content.GetType().Name == "PageAddEditTires")
            {
                btnBack.Visibility = Visibility.Collapsed;
                tbSections.Visibility = Visibility.Collapsed;
            }
            if (baseFrame.Content.GetType().Name == "PageTires" || baseFrame.Content.GetType().Name == "PageCover" || baseFrame.Content.GetType().Name == "PageRims")
            {
                btnToTires.Visibility = Visibility.Visible;
                btnToCover.Visibility = Visibility.Visible;
                btnToRims.Visibility = Visibility.Visible;
            }
            else
            {
                btnToTires.Visibility = Visibility.Collapsed;
                btnToCover.Visibility = Visibility.Collapsed;
                btnToRims.Visibility = Visibility.Collapsed;
            }       
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            var result = MessageBox.Show("Вы точно хотите выйти?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                Environment.Exit(0);
            }
            else
            {
                return;
            }
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.GoBack();
        }

        private void btnExitAccount_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PageAutorization());
        }

        private void btnToClients_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PageClients());
        }

        private void btnToCars_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PageCars());
        }

        private void btnToConf_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PageConfiguration());
        }

        private void btnToPartsConf_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PagePartsConf());
        }

        private void btnToHistory_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PageHistory());
        }     

        private void btnToUsers_Click(object sender, RoutedEventArgs e)
        {
            baseFrame.Navigate(new PageUsers());
        }

        private void btnToTires_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageTires());
        }

        private void btnToCover_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageCover());
        }

        private void btnToRims_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageRims());
        }
    }
}
