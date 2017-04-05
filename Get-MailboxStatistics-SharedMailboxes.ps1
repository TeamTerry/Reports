#################################################################################################################
###                                                                                                           ###
###  Script by Terry Munro - http://365Admin.com.au - https://github.com/TeamTerry                            ###
###  Version 1.0 - 23/01/2017                                                                                 ###
###                                                                                                           ###
###  Created with the follow links as reference                                                               ###
###  https://www.experts-exchange.com/questions/28495099/Powershell-Get-Mailbox-Get-MailboxStatistics.html    ###
###                                                                                                           ###
#################################################################################################################

Get-Mailbox -ResultSize "unlimited" -filter {RecipientTypeDetails -eq "SharedMailbox"} | 
Get-MailboxStatistics |
Select Name,DisplayName,Database,DatabaseName,ServerName,ItemCount,TotalItemSize,AttachmentTableTotalSize | 
export-csv -NoTypeInformation c:\scripts\MailboxStatistics-SharedMailboxes.csv