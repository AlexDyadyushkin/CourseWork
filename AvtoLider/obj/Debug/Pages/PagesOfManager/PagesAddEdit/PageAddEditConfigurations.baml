   M S B A M L   `   `   `  ����D  @AvtoLider, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulli9clr-namespace:AvtoLider.Pages.PagesOfManager.PagesAddEdit+AvtoLider.Pages.PagesOfManager.PagesAddEdit  5      K    EAvtoLider.Pages.PagesOfManager.PagesAddEdit.PageAddEditConfigurations   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Klocal9clr-namespace:AvtoLider.Pages.PagesOfManager.PagesAddEdit     5        N� Title$  PageAddEditConfigurations��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   �� $��2��6   $��20(�6(   $	��Top=�66   $��20q�6N   $\��VДобавление (изменение) данных об конфигурациях��6Z   6�   �� 5   
   $��Клиент��6   $��Bottom=�6"   $��18q�6=   $��Right=�6I   6g   �� 5   
   $��Автомобиль��6   $��1��6&   $��Right=�63   $��15q�6O   6]   �� 5   
   $��
Диски��6   $��2��6!   $��Right=�6.   $��15q�6J   6X   �� 5   
   $��Покрытие��6   $��3��6$   $��Right=�61   $��15q�6M   6[   �� 5   
   $��Шины��6   $��4��6    $��Right=�6-   $��15q�6I   6W   �� 5   
   $��Цвет��6   $��5��6    $��Right=�6-   $��15q�6I   6W   �� 5    
   -   5        $��	cbClients��5    Q    �� DisplayMemberPath$ LastName��64   $��1��6b   $��Bottom=�6r   $��15q�6�    �� SelectedItem 6   �� *	Clients+6�   �� 5!   
   -   5        $��cbModels��5!   K   $ Model��61   $��1��6[   $��1��6k   $��15q�6x    6   �� *Cars+6�   �� 5"   
   -   5        $��cbRims��5"   R   $ Title��68   $��1��6`   $��2��6p   $��15q�6}    6   �� *TypesOfRims+6�   �� 5#   
   -   5        $��cbCover��5#   S   $ Title��69   $��1��6b   $��3��6r   $��15q�6    6   �� *TypesOfCover+6�   �� 5$   
   -   5        $��cbTires��5$   S   $ Title��69   $��1��6b   $��4��6r   $��15q�6    6   �� *TypesOfTires+6�   �� 5%   
    �� 	MaxLength$ 50��6)   $��1��68   $��5��6H   $��15q�6U   ��6   �� *Color+6c   �� 5&   
   -   5        $��btnSave��5&   |   $��Сохранить��6   $��2��6%   $��Bottom=�69   $
��Left=�6T   $��6��6o   6�   �� 5'   
   -   5        $��	btnCancel��5'   z   $��Отмена��6   $��2��6"   $��Bottom=�66   $��Right=�6Q   $��6��6m   6�   5(      5)      