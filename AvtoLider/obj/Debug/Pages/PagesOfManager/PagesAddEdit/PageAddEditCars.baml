   M S B A M L   `   `   `  ����D  @AvtoLider, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulli9clr-namespace:AvtoLider.Pages.PagesOfManager.PagesAddEdit+AvtoLider.Pages.PagesOfManager.PagesAddEdit  5      A    ;AvtoLider.Pages.PagesOfManager.PagesAddEdit.PageAddEditCars   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Klocal9clr-namespace:AvtoLider.Pages.PagesOfManager.PagesAddEdit     5        N� Title$  PageAddEditCars��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��160 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   �� $��2��6   $��20(�6(   $	��Top=�66   $��50q�6N   $X��RДобавление (изменение) данных об автомобилях��6Z   6�   �� 5   
   $��
Марка��6   $��Bottom=�6!   $��18q�6<   $��Right=�6H   6f   �� 5   
   $��Модель��6   $��1��6"   $��Right=�6/   $��15q�6K   6Y   �� 5   
   $��Цена��6   $��2��6    $��Right=�6-   $��15q�6I   6W   �� 5   
   $��Количество��6   $��3��6&   $��Right=�63   $��15q�6O   6]   �� 5   
    �� 	MaxLength$ 50��6)   $��1��68   $��Bottom=�6H   $��15q�6c   ��6   �� *Brand+6q   �� 5   
   $ 50��6)   $��1��68   $��1��6H   $��15q�6U   ��6   �� *Model+6c   �� 5   
   -   5        $��tbPrice��5   N   $ 50��6]   $��1��6l   $��2��6|   $��15q�6�   ��6   �� *Price+ �� StringFormat$ C�� �� ConverterCulture$ ru��6�   �� 5   
   -   5        $��tbAmount��5   *   $ 50��6:   $��1��6I   $��3��6Y   $��15q�6f   ��6   �� *Amount+6t   �� 5    
   -   5        $��btnSave��5    |   $��Сохранить��6   $��2��6%   $��Bottom=�69   $
��Left=�6T   $��4��6o   6�   �� 5!   
   -   5        $��	btnCancel��5!   z   $��Отмена��6   $��2��6"   $��Bottom=�66   $��Right=�6Q   $��4��6m   6�   5"      5#      