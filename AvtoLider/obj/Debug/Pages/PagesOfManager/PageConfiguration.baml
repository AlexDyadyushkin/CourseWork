   M S B A M L   `   `   `  ����D  @AvtoLider, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:AvtoLider.Pages.PagesOfManagerAvtoLider.Pages.PagesOfManager  5      6    0AvtoLider.Pages.PagesOfManager.PageConfiguration   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:AvtoLider.Pages.PagesOfManager     5      -   5          N� Title$  Менеджер��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   �� $5��/Составление конфигурации��6   $��Center=�64   $��20(�6O   $��1��6]   6p   �� 5   
   $��Поиск:��6   $��1��6"   $
��Left=�6/   $��10 0 0 0q�6J   6^   �� 5   
   -   5        $��tbSearch��5   L   $	��100��6   $��1��6   $��60 0 0 0q�6+    �� 	MaxLength$ 50��6=   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	dGridConf��5       $��2��6      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 №��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6G   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 60   �� *Id+6S     5      $ Клиент��6%   $ * 6Z   	 65   �� *Clients.LastName+6f     5      $ Автомобиль��6%   $ * 6X   	 69   �� *
Cars.Model+6d     5      $ 
Диски��6%   $ * 6Z   	 64   �� *TypesOfRims.Title+6f     5      $ Покрытие��6%   $ * 6^   	 67   �� *TypesOfCover.Title+6j     5      $ Шины��6%   $ * 6Z   	 63   �� *TypesOfTires.Title+6f     5      $ Цвет��6%   $ * 6M   	 63   �� *Color+6Y   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   
   CellTemplate
 5      �� 5       .R�5!      �� $��btnEdit��6=   -   5        $ ��Редактироавть��5!   %   6d   5"      5$      5&      �� 5'   
   -   5        $��btnAdd��5'   L   $��Добавить��6   $��3��6$   $
��Left=�61   6q   �� 5(   
   -   5        $��btnPrint��5(   ^   $��Печать��6   $��3��6"   $
��Left=�60   $��	150 0 0 0q�6K   6�   �� 5)   
   -   5        $��	btnDelete��5)   g   $��Удалить��6   $��Center=�6#   $��3��6>   $��Right=�6K   6�   5*      5+      