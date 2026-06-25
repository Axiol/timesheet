# Timesheet

Générateur de timesheet mensuelle. Coche les demi-journées (AM/PM) travaillées et télécharge un PDF A4 paysage prêt à signer.

App statique : un seul fichier `timesheet.html`, aucune dépendance (jsPDF chargé via CDN).

## Utilisation

Ouvre `timesheet.html` dans un navigateur, ou sers-le avec Docker :

```bash
docker build -t timesheet .
docker run -p 8080:80 timesheet
```

Puis ouvre http://localhost:8080.

## Déploiement

Un push sur `main` build et publie l'image sur GHCR via GitHub Actions :

```
ghcr.io/axiol/<repo>:latest
```
