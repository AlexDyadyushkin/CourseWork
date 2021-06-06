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
using AvtoLider.Pages.PagesOfManager.PagesAddEdit;
using AvtoLider.Clases;
using AvtoLider.Models;
using Word = Microsoft.Office.Interop.Word;

namespace AvtoLider.Pages.PagesOfManager
{
    /// <summary>
    /// Логика взаимодействия для PageConfiguration.xaml
    /// </summary>
    public partial class PageConfiguration : Page
    {
        private Word.Document document = null;
        public PageConfiguration()
        {
            InitializeComponent();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageAddEditConfigurations((sender as Button).DataContext as Configuration));
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            ClassManager.BaseFrame.Navigate(new PageAddEditConfigurations(null));
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            var confForRemoving = dGridConf.SelectedItems.Cast<Configuration>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {confForRemoving.Count()} элементов?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    bdAvtoLiderEntities.GetContext().Configuration.RemoveRange(confForRemoving);
                    bdAvtoLiderEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");
                    dGridConf.ItemsSource = bdAvtoLiderEntities.GetContext().Configuration.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                bdAvtoLiderEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                dGridConf.ItemsSource = bdAvtoLiderEntities.GetContext().Configuration.ToList();
            }
        }

        private void btnPrint_Click(object sender, RoutedEventArgs e)
        {
            BaseWindow startWindow = (BaseWindow)Application.Current.MainWindow;

            startWindow.winBaseWindow.WindowState = WindowState.Minimized;

            FormDocument();
            document.Application.Dialogs[Microsoft.Office.Interop.Word.WdWordDialog.wdDialogFilePrint].Show();
            document.Application.Quit();
            document = null;
        }

        private void tbSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void Update()
        {
            dGridConf.ItemsSource = bdAvtoLiderEntities.GetContext().Configuration.ToList().Where(p => p.Clients.LastName.ToLower().Contains(tbSearch.Text.ToLower()) || p.Cars.Model.ToLower().Contains(tbSearch.Text.ToLower()) 
                        || p.TypesOfCover.Title.ToLower().Contains(tbSearch.Text.ToLower()) || p.TypesOfRims.Title.ToLower().Contains(tbSearch.Text.ToLower()) || p.TypesOfTires.Title.ToLower().Contains(tbSearch.Text.ToLower()));
        }

        private void FormDocument()
        {
            try
            {
                var rows = dGridConf.ItemsSource.Cast<Configuration>().ToList();
                if (rows.Count == 0)
                {
                    MessageBox.Show("Нет данных для печати", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                var app = new Word.Application();
                document = app.Documents.Add();
                Word.Paragraph tableParagraph = document.Paragraphs.Add();
                Word.Range tableRange = tableParagraph.Range;
                Word.Table table = document.Tables.Add(tableRange, rows.Count + 1, 7);
                table.Borders.InsideLineStyle = table.Borders.OutsideLineStyle = Word.WdLineStyle.wdLineStyleSingle;
                table.Range.Cells.VerticalAlignment = Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;

                Word.Range cellRange;
                cellRange = table.Cell(1, 1).Range;
                cellRange.Text = "№";
                cellRange = table.Cell(1, 2).Range;
                cellRange.Text = "Клиент";
                cellRange = table.Cell(1, 3).Range;
                cellRange.Text = "Автомобиль";
                cellRange = table.Cell(1, 4).Range;
                cellRange.Text = "Диски";
                cellRange = table.Cell(1, 5).Range;
                cellRange.Text = "Покрытие";
                cellRange = table.Cell(1, 6).Range;
                cellRange.Text = "Шины";
                cellRange = table.Cell(1, 7).Range;
                cellRange.Text = "Цвет";

                table.Rows[1].Range.Bold = 1;
                int currentRow = 1;
                foreach (var row in rows)
                {
                    currentRow++;

                    cellRange = table.Cell(currentRow, 1).Range;
                    cellRange.Text = row.Id.ToString();

                    cellRange = table.Cell(currentRow, 2).Range;
                    cellRange.Text = row.Clients.LastName;

                    cellRange = table.Cell(currentRow, 3).Range;
                    cellRange.Text = row.Cars.Model;

                    cellRange = table.Cell(currentRow, 4).Range;
                    cellRange.Text = row.TypesOfRims.Title;

                    cellRange = table.Cell(currentRow, 5).Range;
                    cellRange.Text = row.TypesOfCover.Title;

                    cellRange = table.Cell(currentRow, 6).Range;
                    cellRange.Text = row.TypesOfTires.Title;

                    cellRange = table.Cell(currentRow, 7).Range;
                    cellRange.Text = row.Color;
                }

                document.Paragraphs.Add();
                Word.Paragraph sum = document.Paragraphs.Add();
                sum.Range.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphRight;
                Word.Range sumRange = sum.Range;
                sumRange.Bold = 1;
            }
            catch
            {
                MessageBox.Show("Ошибка в формировании отчета", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
