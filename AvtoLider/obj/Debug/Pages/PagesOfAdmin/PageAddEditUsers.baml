   M S B A M L   `   `   `  ����D  @AvtoLider, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:AvtoLider.Pages.PagesOfAdminAvtoLider.Pages.PagesOfAdmin  5      3    -AvtoLider.Pages.PagesOfAdmin.PageAddEditUsers   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:AvtoLider.Pages.PagesOfAdmin     5        N� Title$  PageAddEditUsers��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��160 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   �� $��2��6   $��20(�6(   $	��Top=�66   $��50q�6N   $H��BДобавление (изменение) пользователя��6Z   6�   �� 5   
   $��Имя и фамилия��6   $��Bottom=�6)   $��18q�6D   $��Right=�6P   6n   �� 5   
   $��
Логин��6   $��1��6!   $��Right=�6.   $��15q�6J   6X   �� 5   
   $��Пароль��6   $��2��6"   $��Right=�6/   $��15q�6K   6Y   �� 5   
   $��Роль��6   $��3��6    $��Right=�6-   $��15q�6I   6W   �� 5   
    �� 	MaxLength$ 50��6(   $��1��67   $��Bottom=�6G   $��15q�6b   ��6   �� *Name+6p   �� 5   
   -   5        $��tbLogin��5   )   $ 50��68   $��1��6G   $��1��6W   $��15q�6d   ��6   �� *Login+6r   �� 5   
   $ 50��6-   $��1��6<   $��2��6L   $��15q�6Y   ��6   �� *
Password+6g   �� 5   
   -   5         ��Name$ cbRoles��5   S   $��1��66   $��3��6F    �� DisplayMemberPath$ Title��6d   $��15q�6~    �� SelectedItem 6   �� *	UserRoles+6�   �� 5    
   -   5        $��btnSave��5    |   $��Сохранить��6   $��2��6%   $��Bottom=�69   $
��Left=�6T   $��4��6o   6�   �� 5!   
   -   5        $��	btnCancel��5!   z   $��Отмена��6   $��2��6"   $��Bottom=�66   $��Right=�6Q   $��4��6m   6�   5"      5#      