if ($args.Length -eq 3)
{
	function ExtendJSON($base, $ext)
	{
		$propNames = $($ext | Get-Member -MemberType *Property).Name
		foreach ($propName in $propNames) {
			if ($base.PSObject.Properties.Match($propName).Count) {
				if ($base.$propName.GetType().Name -eq "PSCustomObject")
				{
					$base.$propName = ExtendJSON $base.$propName $ext.$propName
				}
				else
				{
					$base.$propName = $ext.$propName
				}
			}
			else
			{
				$base | Add-Member -MemberType NoteProperty -Name $propName -Value $ext.$propName
			}
		}
		return $base
	}
	$file1 = (Get-Content $args[0]) -join "`n" | ConvertFrom-Json
	$file2 = (Get-Content $args[1]) -join "`n" | ConvertFrom-Json
	$output = ExtendJSON $file1 $file2 | ConvertTo-Json
	#Save output as BOMless UTF8
	[System.IO.File]::WriteAllLines($args[2], $output)
}
else
{
	echo "  --==:[extend.ps1 1.0]:==--"
	echo "Combines two JSON files into one."
	echo ""
	echo "Usage:"
	echo ""
	echo "build.script file1 file2 target"
	echo ""
	echo "file1 - JSON file that will be used as a base"
	echo "file2 - JSON file that will be used to extend file 1"
	echo "target - name of the target JSON file"
}