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

#Exercice 6 — Créer un fichier log.txt, écrire "Test réussi", puis afficher son contenu.

#Exercice 7 — Afficher les services en cours d’exécution.

#Exercice 8 — Afficher les processus utilisant plus de 50 Mo de RAM.

#Exercice 9 — Créer un objet avec Nom, Age, Ville et afficher ses propriétés.

#Exercice 10 — Lire un fichier CSV et afficher les personnes de plus de 25 ans.

#Exercice 11 — Demander un nombre et afficher de 1 jusqu’à ce nombre.

#Exercice 12 — Demander un prénom tant qu’il est vide.

#Exercice 13 — Demander un service et afficher s’il existe.

#Exercice 14 — Trouver la plus petite valeur d’un tableau.

#Exercice 15 — Afficher les commandes du module Microsoft.PowerShell.Utility.

#Exercice 16 — Créer une fonction multiplier qui multiplie deux nombres.

#Exercice 17 — Trier un tableau en ordre croissant avec des boucles.

#Exercice 18  — Convertir un nombre en binaire.

#Exercice 19 — Lire un CSV de produits et afficher ceux > 200.

#Exercice 20 — Afficher les fichiers .txt du dossier courant triés par date.
