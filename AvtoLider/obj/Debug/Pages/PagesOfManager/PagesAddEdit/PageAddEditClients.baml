   M S B A M L   `   `   `  ����D  @AvtoLider, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulli9clr-namespace:AvtoLider.Pages.PagesOfManager.PagesAddEdit+AvtoLider.Pages.PagesOfManager.PagesAddEdit  5      D    >AvtoLider.Pages.PagesOfManager.PagesAddEdit.PageAddEditClients   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Klocal9clr-namespace:AvtoLider.Pages.PagesOfManager.PagesAddEdit     5      X TXceed.Wpf.Toolkit, Version=4.1.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44mask)http://schemas.xceed.com/wpf/xaml/toolkit  5        N� Title$  PageAddEditClients��5
      .��5      �  � RowDefinitions 5   
   �� 5      $	��160 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   �� $��2��6   $��20(�6(   $	��Top=�66   $��50q�6N   $R��LДобавление (изменение) данных об клиентах��6Z   6�   �� 5   
   $��Имя��6   $��Bottom=�6   $��18q�6:   $��Right=�6F   6d   �� 5   
   $��Фамилия��6   $��1��6#   $��Right=�60   $��15q�6L   6Z   �� 5   
   $'��!Электронная почта��6   $��2��6-   $��Right=�6:   $��15q�6V   6d   �� 5   
   $!��Номер телефона��6   $��3��6*   $��Right=�67   $��15q�6S   6a   �� 5   
   $��Дата рождения��6   $��4��6)   $��Right=�66   $��15q�6R   6`   �� 5   
    �� 	MaxLength$ 50��6-   $��1��6<   $��Bottom=�6L   $��15q�6g   ��6   �� *	FirstName+6u   �� 5    
   $ 50��6,   $��1��6;   $��1��6K   $��15q�6X   ��6   �� *
LastName+6f   �� 5!   
   $ 50��6)   $��1��68   $��2��6H   $��15q�6U   ��6   �� *Email+6c   %  Xceed.Wpf.Toolkit.MaskedTextBox  5"   
   -   5          Name$ tbPhone��5"   [   $��1��6   $��3��6-    � ToolTip$0 *Введите номер телефона��6:      Mask$ +7 (000)-000-00-00��6l   $��15 0 0 0q�6�   $	��130��6�   $��20��6�   $
��Left=�6�   $��Center=�6�   ��6�   �� *PhoneNumber+6  �� 5#   
   -   5        $��tbBirth��5#   E   $��4��6T   $��1��6a   $
��Left=�6q   $��15 0 0 0q�6�   $	��130��6�   ��6   �� *
Birthday+ �� StringFormat$ 
dd/MM/yyyy��6�   �� 5$   
   -   5        $��btnCalVisible��5$   ~   $��4��6   $��1��6   $
��Left=�6.   $��	170 0 0 0q�6I      Calendar#��[  6\   $��50��6�   
������ 6�   � 5%   
   -   5        $��grCal��5%   l   $��2��6   $��6��6#   $��Center=�64   $��Center=�6Q   $y�	Collapsed=�6y    K� ZIndex$ 10��6�   .+�5&      &   System.Windows.Controls.Calendar  -   5        $��calBirth��5&   5   $��1��6   $��4��6(   	   FirstDayOfWeek$	 Monday=�6E   
   DisplayDate$
 
01.01.2000��6]   $
��Left=�6v   $��	170 0 0 0q�6�   6�   5'      �� 5(   
   -   5        $��btnSave��5(   |   $��Сохранить��6   $��2��6%   $��Bottom=�69   $
��Left=�6T   $��5��6o   6�   �� 5)   
   -   5        $��	btnCancel��5)   z   $��Отмена��6   $��2��6"   $��Bottom=�66   $��Right=�6Q   $��5��6m   6�   5*      5+      