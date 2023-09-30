# Get all AVD Application Groups (Name only)
$appGroupName = Get-AzWvdApplicationGroup | Select-Object Name
#For each AVD Application Group .....
$appGroupName | ForEach-Object {
    $name = $_.Name
    # Get all assignments
    $assignments = Get-AzRoleAssignment | Where-Object { $_.Scope -like "*/$name" }
    # Prepare output (Displayname, ObjectType,ActionGgroup)
    $assignments | Select-Object DisplayName, ObjectType, @{N = 'ActionGroup'; E = { $_.Scope.Split('/')[-1] } }
}