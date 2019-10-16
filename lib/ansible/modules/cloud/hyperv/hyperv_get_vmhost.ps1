#!powershell

#AnsibleRequires -CSharpUtil Ansible.Basic

$spec = @{
    supports_check_mode = $true
}

$module = [Ansible.Basic.AnsibleModule]::Create($args, $spec)

$module.Result.info = Get-VMHost

$module.ExitJson()
