# Bloque1: Tipado dinamico, estatico y tipos basicos
$recurso="8080"
Write-Host $recurso

$recurso="Puerto http " 
Write-Host "$recurso"

#2.- Forzando el tipado estatico
[int]$maxconexiones=100
[bool]$firewallactivo=$true

$maxconexiones="cien"


#3 - Números grandes y precisión financiera


[long]$tamanoBackup=2199023255552

[decimal]$costeLicencia=149.95d
[decimal]$iva=31.49d
[decimal]$total=$costeLicencia + $iva

Write-Host $total

Write-Host $tamanoBackup

#4 - Cálculo de tiempos de ejecución (DateTime y TimeSpan)

[datetime]$fechaActual=Get-Date
[int]$ano=$fechaActual.Year
[datetime]$fechalimite=$fechaActual.AddDays(45)
 
Write-Host " $ano La cotrasena caducara en $fechalimite"


[datetime]$inicio=Get-Date

Start-Sleep -Seconds 3

[datetime]$fin=Get-Date

[timespan]$tiempoTotal=$fin-$inicio

Write-Host "Segundos trancurridos $($tiempoTotal.TotalSeconds)"


# Bloque 2: Manipulación de cadenas y expresiones regulares

#5

$servicio="Spooler"
$fecha=Get-Date

Write-Host '$servicio'
Write-Host "$servicio $($fecha.Day) " 

#6
$cadena=" El servidor {0} con IP {1} tiene un uso CPU del {2}% " -f "SRV-WEB01","10.0.1.15",85

Write-Host $cadena


#7

$lineaLog=" error_critico;SRV-DB01;192.168.10.50;Puerto_3306 "
$lineaSinEspacios=$lineaLog.trim()
$lineaRemplazada=$lineaLog.Replace('_',' ')
$lineaMayuscula=$lineaLog.ToUpper()
$campos=$lineaLog.Split(';')

Write-Host $lineaSinEspacios
Write-Host $lineaRemplazada
Write-Host $lineaMayuscula
Write-Host $campos[2]


#8

$codigoActivo = "SRV-2026-PROD-99"

$empiezaSRV= $codigoActivo -like "SRV*"  
$tieneNumeros= $codigoActivo -match "\d"
$remplazaNumeros= $codigoActivo -replace "\d", "x"
Write-Host $empiezaSRV
Write-Host $tieneNumeros
Write-Host $remplazaNumeros