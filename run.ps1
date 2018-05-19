$Body = @{
    "patientId" = 100
    "timestamp" = "Tue Nov 01 2016 09:11:51 GMT-0500 (CDT)"
    "medication" = "Albuterol"
}
$Response = Invoke-WebRequest -Uri http://localhost:3000/api/usages -Body ($Body|ConvertTo-Json) -ContentType "application/json" -Method POST
$Response