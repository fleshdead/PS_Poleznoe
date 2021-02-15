$resulttest = Get-ADUser -Filter * -Properties EmailAddress | where -Property EmailAddress -like “*@tttt.tt”
$resulttest | where -Property Enabled -like "*true*" | select -Property Name, EmailAddress, enabled| Export-Csv -Path Z:\Vivod\UserVKL.csv -Encoding Unicode -NoTypeInformation
