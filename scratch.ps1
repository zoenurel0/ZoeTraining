$json = Get-Content -Path .\LearningReferences.json | ConvertFrom-Json

$json.TrainingReferences.time | measure -Sum

($json.TrainingReferences | ? {$_.complete}).time | measure -Sum

$json.TrainingReferences | ? {$_.complete -ne $true}

# Add a property
$json.TrainingReferences | Add-Member -NotePropertyName deleteme -NotePropertyValue "I just inserted this string" 

# Write out the new file
$json | ConvertTo-Json | Out-File -FilePath .\LearningReferences2.json

