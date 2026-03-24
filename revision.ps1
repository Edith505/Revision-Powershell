# Exercice 1
$ville = Read-Host "entrer le ville"
$pays = Read-Host "entrer le pays"

Write-Output "je vis a $($ville) au $($pays)"

#Exercice 2 — Créer deux nombres et afficher leur produit.
[int]$a = 2
[int]$b = 4

$resultat = $a * $b

Write-Host $resultat

#Exercice 3 — Demander un nombre. Afficher "Positif" s’il est ≥ 0 sinon "Négatif".
$nombre = Read-Host "entrer un nombre"
if ($nombre -ge 0) {
    Write-Host "$nombre est positif"
}else {
    Write-Host "$nombre est negatif" 
}

#Exercice 4 — Créer un tableau de 4 couleurs et les afficher.
$couleurs = @("rouge","rose","bleu","blanc")

foreach($couleur in $couleurs){
    Write-Output "$($couleur)"
}

#Exercice 5 — Afficher les nombres de 5 à 15.
for ($i = 1; $i -le 15; $i++) {
    Write-Host $i
}

#Exercice 6 — Créer un fichier log.txt, écrire "Test réussi", puis afficher son contenu.
New-Item -Path "log.txt" -ItemType File -Force
Set-Content -Path "log.txt" -Value "Test reussi"
Get-Content -Path "log.txt"

#Exercice 7 — Afficher les services en cours d’exécution.
Get-Service | Where-Object {$_.Status -eq "Running"}

#Exercice 8 — Afficher les processus utilisant plus de 50 Mo de RAM.
Get-Process | Where-Object {$_.WorkingSet -gt 50MB}
Get-Process | Get-Member WorkingSet


#Exercice 9 — Créer un objet avec Nom, Age, Ville et afficher ses propriétés.
$obj = [PSCustomObject]@{
    Nom = "Ange"
    Age = 25
    Ville = "limoilou"
}

Write-Output "$($obj.Nom) $($obj.Age) $($obj.Ville)"

#Exercice 10 — Lire un fichier CSV et afficher les personnes de plus de 25 ans.
$personnes = Import-Csv -Path "personne.csv" -Header "Nom","Age" -Delimiter ";"
foreach($personne in $personnes){
    $age = $personne.Age -as [int]
    if ($age -ge 25) {
        Write-Output "$($personne.Nom)"
    }
}

#Exercice 11 — Demander un nombre et afficher de 1 jusqu’à ce nombre.
$nbr = Read-Host "entrer un nombre "
for ($i = 1; $i -le $nbr; $i++) {
    $i
}

#Exercice 12 — Demander un prénom tant qu’il est vide.
do{
    $prenom = Read-Host "entrer un prenom"
}while($prenom -eq "")

Write-Host $prenom

#Exercice 13 — Demander un service et afficher s’il existe.
$nom = Read-Host "entrer un service"
$service = Get-Service -Name $nom -ErrorAction SilentlyContinue

if ($null -eq $service) {
    Write-Host "erreur"
}else {
    Write-Host "existe"
}


#Exercice 14 — Trouver la plus petite valeur d’un tableau.
$tab = @(5,23,54,4,1,3)

$min = $tab[0]

foreach($n in $tab){
    if ($n -lt $min) {
        $min =  $n
    }
}
Write-Host $min

#Exercice 15 — Afficher les commandes du module Microsoft.PowerShell.Utility.
Get-Command -Module Microsoft.PowerShell.Utility

#Exercice 16 — Créer une fonction multiplier qui multiplie deux nombres.
function multiplie {
    param (
        [int]$n1,
        [int]$n2
    )

    $mult = $n1 * $n2
    Write-Host $mult
}



#Exercice 17 — Trier un tableau en ordre croissant avec des boucles.

#Exercice 18  — Convertir un nombre en binaire.

#Exercice 19 — Lire un CSV de produits et afficher ceux > 200.

#Exercice 20 — Afficher les fichiers .txt du dossier courant triés par date.
