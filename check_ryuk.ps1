Try
{
  Get-ADUser -identity $args[0] | Out-Null
  write-host 'CRITICAL - User'$args[0]'exists. Check systems for Ryuk infection.'
  exit 2
}
Catch [Microsoft.ActiveDirectory.Management.ADIdentityNotFoundException]
{ 
write-host 'OK - User'$args[0]'does not exist in Active Directory'
  exit 0
}
