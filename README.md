# Hack the domain controller in Azure
Script, steps and REMEDIATION


# Hack Steps

1. Download script from here: https://github.com/haaranenjarmo/hack.this/blob/master/powershell.ps1
2. Login to Azure Portal: https://portal.azure.com
3. Select domain controller virtual machine
4. Select Extensions on "Settings section"
5. Click Add
6. Select Custom Script Extension
7. Click Create
8. Click folder icon to upload script file
9. Click Ok


# Remediation steps

1. Login to Azure with PowerShell
    - Login-AzAccount
2. Get Azure subscription id
    - (Get-AzSubscription).id
3. Download custom role definition file from here https://github.com/haaranenjarmo/hack.this/blob/master/helpdesk_role_definition.json
4. Add your subscription id to AssignableScopes in helpdesk_role_definition.json
5. Provision new role to Azure
    - New-AzRoleDefinition -InputFile D:\temp\HelpDesk_role_definition.json
6. Assing custom role for users who actual needs to have access to domain controller virtual machine in Azure
7. Remove unnecessary role assingments
