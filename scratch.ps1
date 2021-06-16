$json = Get-Content -Path .\LearningReferences.json | ConvertFrom-Json

$json.TrainingReferences.time | measure -Sum

($json.TrainingReferences | ? {$_.complete}).time | measure -Sum

$json.TrainingReferences | ? {$_.complete -ne $true}

