   M S B A M L   `   `   `  ����  CarRentalApp1    +CarRentalApp.Views.CustomerManagementWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Customer Management��5   	   $	��400��6%   $	��600��62    � WindowStartupLocation$ CenterScreen=�6>   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0,0,0,10q�6.   .+�5      �� -   5         ��Name$ NameBox��5      $	��150��6'   $��0,0,10,0q�63   .��6E   ��5      �� 5       �� 
TargetType" ��6    �� Triggers 5      P� 5       P� Property � �� P� Value$  ��66   . �5   "   �� 	 �� Property	 � ��
 �� Value
 5   &   !� 5   *    j� Stretch$
 None=�66    !� Visual 5   .   �� 5   2   $��	Full Name��6<   
�������6M   5   +   5   #   5      5      .��5   !   5      �� 5      -   5        $ EmailBox��5      $	��150��6(   $��0,0,10,0q�64   .��6F   ��5       �� 5!      " ��6    5"      P� 5#       � ��$  ��66   . �5$   "   �� 	 � ��
 5%   &   !� 5&   *   $
 None=�66    5'   .   �� 5(   2   $��Email��6<   
�������6I   5*   +   5,   #   5-      5/      .��50   !   51      �� 52      -   5        $ PhoneBox��52      $	��100��6(   $��0,0,10,0q�64   .��6F   ��53      �� 54      " ��6    55      P� 56       � ��$  ��66   . �57   "   �� 	 � ��
 58   &   !� 59   *   $
 None=�66    5:   .   �� 5;   2   $��Phone��6<   
�������6I   5=   +   5?   #   5@      5B      .��5C   !   5D      �� 5E      -   5        $��Add Customer��5E      6,   5F      &   System.Windows.Controls.DataGrid  5H   
   -   5          Name$ CustomerGrid��5H      $��1��6)      AutoGenerateColumns$ False��66      
IsReadOnly$
 True��6R      Columns 5I      0  *System.Windows.Controls.DataGridTextColumn  5J      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 40 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5K      $ 	Full Name��6%   $ * 6U    68   �� *
FullName+6U     5L      $ Email��6%   $ * 6N    64   �� *Email+6N     5M      $ Phone��6%   $ * 6N    64   �� *Phone+6N   5O      5P      5Q      