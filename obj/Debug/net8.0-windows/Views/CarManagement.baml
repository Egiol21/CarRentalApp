   M S B A M L   `   `   `  ����  CarRentalApp,    &CarRentalApp.Views.CarManagementWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Car Management��5   	   $	��400��6    $	��600��6-    � WindowStartupLocation$ CenterScreen=�69   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0,0,0,10q�6.   .+�5      �� -   5         ��Name$ BrandBox��5      $	��100��6(   $��0,0,10,0q�64   .��6F   ��5      �� 5       �� 
TargetType" ��6    �� Triggers 5      P� 5       P� Property � �� P� Value$  ��66   . �5   "   �� 	 �� Property	 � ��
 �� Value
 5   &   !� 5   *    j� Stretch$
 None=�66    !� Visual 5   .   �� 5   2   $��Brand��6<   
�������6I   5   +   5   #   5      5      .��5   !   5      �� 5      -   5        $ ModelBox��5      $	��100��6(   $��0,0,10,0q�64   .��6F   ��5       �� 5!      " ��6    5"      P� 5#       � ��$  ��66   . �5$   "   �� 	 � ��
 5%   &   !� 5&   *   $
 None=�66    5'   .   �� 5(   2   $��Model��6<   
�������6I   5*   +   5,   #   5-      5/      .��50   !   51      �� 52      -   5        $ PlateBox��52      $	��100��6(   $��0,0,10,0q�64   .��6F   ��53      �� 54      " ��6    55      P� 56       � ��$  ��66   . �57   "   �� 	 � ��
 58   &   !� 59   *   $
 None=�66    5:   .   �� 5;   2   $��Plate��6<   
�������6I   5=   +   5?   #   5@      5B      .��5C   !   5D      �� 5E      -   5        $��Add Car��5E      6'   5F      &   System.Windows.Controls.DataGrid  5H   
   -   5          Name$ CarGrid��5H      $��1��6$      AutoGenerateColumns$ False��61      
IsReadOnly$
 True��6M      Columns 5I      0  *System.Windows.Controls.DataGridTextColumn  5J      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 40 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5K      $ Brand��6%   $ * 6N    64   �� *Brand+6N     5L      $ Model��6%   $ * 6N    64   �� *Model+6N     5M      $ Plate��6%   $ * 6T    64   �� *PlateNumber+6T   4  .System.Windows.Controls.DataGridCheckBoxColumn  5N      $ 	Available��6)   $ 80 6\    6<   �� *IsAvailable+6\   5P      5Q      5R      