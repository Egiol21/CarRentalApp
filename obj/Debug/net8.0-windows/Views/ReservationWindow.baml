   M S B A M L   `   `   `  ����  CarRentalApp*    $CarRentalApp.Views.ReservationWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Make Reservation��5   	   $	��400��6"   $	��600��6/    � WindowStartupLocation$ CenterScreen=�6;   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   $��0,0,0,10q�6,   .+�5      �� -   5         ��Name$ CustomerBox��5      $	��300��5      $��0,0,0,10q�5       �� DisplayMemberPath$ FullName��5       �� 
IsEditable$
 True��5       �� 
IsReadOnly$
 True��5       �� Text$ Select Customer��5      �� 5      $ 
Horizontal=�6   $��0,0,0,10q�62   .+�5      (  "System.Windows.Controls.DatePicker  -   5        	  Name$	 StartDatePicker��5      $��0,0,10,0q�66     5      -   5        $	 EndDatePicker��5      �� 5      -   5        $��Check Availability��5      $��10,0,0,0q�66   6H   5      5      �� 5   
   -   5        
 ��Name$
 AvailableCarsList��5      $��1��6-   $ PlateNumber��6:   �� 5   
   -   5        $��Reserve Selected Car��5      $��1��60   $��Bottom=�6=   $��Right=�6X   $��	0,0,10,10q�6t   $	��150��6�   6�   5      5      