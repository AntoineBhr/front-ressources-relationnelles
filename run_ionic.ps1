# Exécute `npm install` pour installer les dépendances
Write-Host "Installation des dépendances avec npm..."
npm install

# Démarre le serveur Ionic
Write-Host "Démarrage du serveur Ionic..."
ionic serve

# Définir une fonction pour arrêter le serveur Ionic
function Stop-IonicServer {
    Write-Host "Arrêt du serveur Ionic..."
    Stop-Process -Name "ionic"
}

# S'assurer que le serveur Ionic est arrêté lorsque le script est interrompu
try {
    Write-Host "Le serveur Ionic est actif. Fermez cette fenêtre ou appuyez sur Ctrl+C pour l'arrêter."
    # Garder la console ouverte pour afficher les logs en continu
    Start-Sleep -Seconds 1 | Out-Null
    Wait-Process -Name "ionic"
} finally {
    Stop-IonicServer
}
