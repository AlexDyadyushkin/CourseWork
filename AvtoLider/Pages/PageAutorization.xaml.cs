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
using AvtoLider.Clases;
using AvtoLider.Models;

namespace AvtoLider.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageAutorization.xaml
    /// </summary>
    public partial class PageAutorization : Page
    {
        public PageAutorization()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            
                if (tbLogin.Text.Length != 0 && pbPass.Password.Length != 0)
                {
                    try
                    {
                        int n = 0;
                        int UserId = 0;
                        foreach (var user in bdAvtoLiderEntities.GetContext().Users)
                        {
                            if (tbLogin.Text == user.Login && pbPass.Password == user.Password)
                            {
                                ClassManager.userName = user.Name;
                                ClassManager.userRole = user.UserRoles.Title;
                                UserId = user.Id;
                                if (user.RoleId == 1)
                                {
                                    ClassManager.BaseFrame.Navigate(new PagesOfAdmin.PageUsers());
                                    MessageBox.Show("Вы вошли как администратор!", "Вход выполнен", MessageBoxButton.OK, MessageBoxImage.Information);
                                }
                                else if (user.RoleId == 2)
                                {
                                    ClassManager.BaseFrame.Navigate(new PagesOfManager.PageCars());
                                    MessageBox.Show("Вы вошли как менеджер!", "Вход выполнен", MessageBoxButton.OK, MessageBoxImage.Information);
                                }
                                n = 0;
                                break;
                            }
                            else if(tbLogin.Text == user.Login)
                            {
                                n += 2;
                                UserId = user.Id;
                            }
                            else
                            {
                                n++;
                            }
                        }
                        if (n == 0)
                        {
                            AddHistory(UserId, true);
                        }
                        else
                        {
                            if (n == 2)
                            {
                                AddHistory(UserId, false);
                            }
                            else
                            {
                                MessageBox.Show("Неправильно введён логин или пароль", "Ошибка входа", MessageBoxButton.OK, MessageBoxImage.Error);
                            }
                        }

                    }
                    catch
                    {
                        MessageBox.Show("Отсутствует связь с базой", "Ошибка подключения", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            else if (tbLogin.Text.Length != 0 && pbPass.Password.Length == 0)
            {
                MessageBox.Show("Введите пароль", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);

            }
            else if (tbLogin.Text.Length == 0 && pbPass.Password.Length != 0)
            {
                MessageBox.Show("Введите логин", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else 
            {
                MessageBox.Show("Введите логин и пароль", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
            }


            /*try
            {
                if (tbLogin.Text == "" && pbPass.Password != "")
                {
                    MessageBox.Show("Введите логин", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else if ((tbLogin.Text != "" && pbPass.Password == ""))
                {
                    MessageBox.Show("Введите пароль", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else if (tbLogin.Text == "" && pbPass.Password != "")
                {
                    MessageBox.Show("Введите логин и пароль", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                int n = 0;
                foreach (var user in bdAvtoLiderEntities.GetContext().Users)
                {
                    if (tbLogin.Text == user.Login && pbPass.Password == user.Password)
                    {
                        if (user.RoleId == 1)
                        {
                            MessageBox.Show("Вы вошли как администратор!", "Вход выполнен", MessageBoxButton.OK, MessageBoxImage.Information);
                            ClassManager.baseFrame.Navigate(new PagesOfAdmin.PageAdmin());
                        }
                        else if (user.RoleId == 2)
                        {
                            MessageBox.Show("Вы вошли как менеджер!", "Вход выполнен", MessageBoxButton.OK, MessageBoxImage.Information);
                            ClassManager.baseFrame.Navigate(new PagesOfManager.PageCars());
                        }
                        n = 0;
                        addHistory(tbLogin.Text, true);
                        break;                     
                    }
                    else if (tbLogin.Text != user.Login && pbPass.Password == user.Password && pbPass.Password != "")
                    {
                        MessageBox.Show("Неправильно введён логин", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
                        n = 0;
                        break;

                    }
                    else if (tbLogin.Text == user.Login && pbPass.Password != user.Password && pbPass.Password != "")
                    {
                        MessageBox.Show("Неправильно введён пароль", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
                        n = 0;
                        break;
                    }
                    else
                    {
                        n++;
                    }
                }
                if (n == 1 && (tbLogin.Text != "" && pbPass.Password != ""))
                {
                    MessageBox.Show("Неправильно введён логин и пароль", "Вход не выполнен", MessageBoxButton.OK, MessageBoxImage.Error);
                    addHistory(tbLogin.Text, false);
                }
            }
            catch
            {
                MessageBox.Show("Отсутствует связь с базой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }*/

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

        private void btnPass_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            tbPass.Text = pbPass.Password;
            pbPass.Visibility = Visibility.Hidden;
            tbPass.Visibility = Visibility.Visible;
        }

        private void btnPass_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            pbPass.Visibility = Visibility.Visible;
            tbPass.Visibility = Visibility.Hidden;
        }

        public static void AddHistory(int login, bool result)
        {
            
                LoginHistory loginHistory = new LoginHistory();
                loginHistory.UserId = login;
                loginHistory.DateAndTime = DateTime.Now;
                loginHistory.Status = result;
                bdAvtoLiderEntities.GetContext().LoginHistory.Add(loginHistory);
                bdAvtoLiderEntities.GetContext().SaveChanges();
            
        }
    }
}
