   M S B A M L   `   `   `  ����D  @AvtoLider, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:AvtoLider.Pages.PagesOfAdminAvtoLider.Pages.PagesOfAdmin  5      ,    &AvtoLider.Pages.PagesOfAdmin.PageUsers   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:AvtoLider.Pages.PagesOfAdmin     5      -   5          N� Title$   Администратор��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   �� $-��'Список пользователей��6   $��Center=�60   $��Center=�6M   $��20(�6h   6x   �� 5   
   $��Поиск:��6   $��1��6"   $
��Left=�6/   $��10 0 0 0q�6J   6^   �� 5   
   -   5        $��tbSearch��5   L   $	��100��6   $��1��6   $��60 0 0 0q�6+    �� 	MaxLength$ 50��6=   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
dGridUsers��5       $��2��6      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Имя и фамилия��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6U   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6<   �� *Name+6a     5      $ 
Логин��6%   $ * 6N   	 64   �� *Login+6Z     5      $ Пароль��6%   $ * 6R   	 65   �� *
Password+6^     5      $ Роль��6%   $ * 6W   	 63   �� *UserRoles.Title+6c   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   
   CellTemplate
 5      �� 5      .R�5      �� $��btnEdit��6=   -   5        $ ��Редактироавть��5   %   6d   5      5!      5#      �� 5$   
   -   5        $��btnAdd��5$   L   $��Добавить��6   $��3��6$   $
��Left=�61   6q   �� 5%   
   -   5        $��btnPrint��5%   ^   $��Печать��6   $��3��6"   $
��Left=�60   $��	150 0 0 0q�6K   6�   �� 5&   
   -   5        $��	btnDelete��5&   M   $��Удалить��6   $��3��6#   $��Right=�61   6x   5'      5(      