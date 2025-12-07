# Script de création de la structure mini-SMSI-ISO27001
# À exécuter depuis le dossier racine du projet

Write-Host "Création de la structure mini-SMSI-ISO27001..." -ForegroundColor Cyan

# Création des dossiers principaux
$folders = @(
    "01-audit",
    "01-audit/exemples",
    "02-analyse-risques",
    "03-documentation",
    "03-documentation/politiques",
    "03-documentation/procedures",
    "03-documentation/registres",
    "04-outils",
    "04-outils/scripts",
    "05-references",
    "05-references/guides"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
    Write-Host "✓ Créé: $folder" -ForegroundColor Green
}

# Création du README principal
$readmeContent = @"
# Mini-SMSI ISO 27001

Système de Management de la Sécurité de l'Information simplifié conforme ISO 27001.

## Structure du projet

- **01-audit/** : Outils d'audit et d'évaluation de conformité
- **02-analyse-risques/** : Méthodologie et outils d'analyse des risques
- **03-documentation/** : Politiques, procédures et registres SMSI
- **04-outils/** : Outils automatisés et dashboards
- **05-references/** : Documentation de référence ISO 27001

## Démarrage rapide

1. Commencez par l'audit initial (dossier 01-audit)
2. Réalisez l'analyse de risques (dossier 02-analyse-risques)
3. Adaptez la documentation à votre contexte (dossier 03-documentation)
4. Utilisez les outils de suivi (dossier 04-outils)

## Licence

Voir fichier LICENSE
"@

Set-Content -Path "README.md" -Value $readmeContent -Encoding UTF8
Write-Host "✓ Créé: README.md" -ForegroundColor Green

# Création du LICENSE
$licenseContent = @"
MIT License

Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"@

Set-Content -Path "LICENSE" -Value $licenseContent -Encoding UTF8
Write-Host "✓ Créé: LICENSE" -ForegroundColor Green

# Création du .gitignore
$gitignoreContent = @"
# Fichiers temporaires
*.tmp
~`$*
*.bak

# Fichiers système
.DS_Store
Thumbs.db
desktop.ini

# Données sensibles
*-confidentiel.*
*-rempli.*
donnees-reelles/

# Environnements Python
venv/
__pycache__/
*.pyc
*.pyo

# Exports et rapports générés
exports/
rapports-generes/
*.log
"@

Set-Content -Path ".gitignore" -Value $gitignoreContent -Encoding UTF8
Write-Host "✓ Créé: .gitignore" -ForegroundColor Green

# 01-audit/README.md
$auditReadme = @"
# Audit et Évaluation de Conformité ISO 27001

## Contenu

- **checklist-iso27001.xlsx** : Liste de contrôle des 93 mesures de l'Annexe A
- **rapport-ecarts-template.docx** : Modèle de rapport d'écarts
- **outil-audit-interactif.html** : Interface web pour audit interactif
- **exemples/** : Exemples de rapports d'audit

## Utilisation

1. Ouvrez la checklist Excel et évaluez chaque contrôle
2. Utilisez l'outil interactif HTML pour une évaluation guidée
3. Générez le rapport d'écarts avec les non-conformités identifiées
"@

Set-Content -Path "01-audit/README.md" -Value $auditReadme -Encoding UTF8
Write-Host "✓ Créé: 01-audit/README.md" -ForegroundColor Green

# 02-analyse-risques/README.md
$risquesReadme = @"
# Analyse et Gestion des Risques

## Contenu

- **matrice-risques.xlsx** : Matrice de probabilité/impact
- **catalogue-menaces.md** : Liste des menaces courantes
- **evaluation-risques-template.xlsx** : Modèle d'évaluation
- **plan-traitement-risques.docx** : Plan de traitement

## Méthodologie

1. Identifier les actifs critiques
2. Lister les menaces et vulnérabilités
3. Évaluer la probabilité et l'impact
4. Définir le traitement (accepter/réduire/transférer/éviter)
"@

Set-Content -Path "02-analyse-risques/README.md" -Value $risquesReadme -Encoding UTF8
Write-Host "✓ Créé: 02-analyse-risques/README.md" -ForegroundColor Green

# 02-analyse-risques/catalogue-menaces.md
$catalogueMenaces = @"
# Catalogue des Menaces

## Menaces techniques
- Malware et ransomware
- Attaques par déni de service (DDoS)
- Accès non autorisés
- Failles de sécurité logicielles

## Menaces humaines
- Erreur humaine
- Ingénierie sociale
- Malveillance interne
- Négligence

## Menaces environnementales
- Incendie
- Inondation
- Panne électrique
- Catastrophes naturelles
"@

Set-Content -Path "02-analyse-risques/catalogue-menaces.md" -Value $catalogueMenaces -Encoding UTF8
Write-Host "✓ Créé: 02-analyse-risques/catalogue-menaces.md" -ForegroundColor Green

# 03-documentation/README.md
$docReadme = @"
# Documentation SMSI

## Structure

### Politiques
Documents de haut niveau définissant les orientations stratégiques

### Procédures
Instructions opérationnelles détaillées

### Registres
Enregistrements et preuves de conformité

## Hiérarchie documentaire
Politique → Procédure → Mode opératoire → Enregistrement
"@

Set-Content -Path "03-documentation/README.md" -Value $docReadme -Encoding UTF8
Write-Host "✓ Créé: 03-documentation/README.md" -ForegroundColor Green

# 04-outils/README.md
$outilsReadme = @"
# Outils et Automatisation

## Contenu

- **dashboard-smsi.html** : Tableau de bord de suivi
- **generateur-rapport.py** : Script de génération de rapports
- **scripts/** : Scripts utilitaires

## Prérequis Python

``````bash
pip install pandas openpyxl python-docx
``````
"@

Set-Content -Path "04-outils/README.md" -Value $outilsReadme -Encoding UTF8
Write-Host "✓ Créé: 04-outils/README.md" -ForegroundColor Green

# 04-outils/generateur-rapport.py
$pythonScript = @"
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Générateur de rapports SMSI
"""

import pandas as pd
from datetime import datetime

def generer_rapport_conformite():
    """Génère un rapport de conformité à partir des données d'audit"""
    print("Génération du rapport de conformité...")
    # TODO: Implémenter la logique
    pass

if __name__ == "__main__":
    generer_rapport_conformite()
"@

Set-Content -Path "04-outils/generateur-rapport.py" -Value $pythonScript -Encoding UTF8
Write-Host "✓ Créé: 04-outils/generateur-rapport.py" -ForegroundColor Green

# 05-references/README.md
$refReadme = @"
# Références ISO 27001

Documentation de référence pour la mise en œuvre de l'ISO 27001.

## Contenu

- **iso27001-annexe-a.md** : Résumé des 93 mesures
- **glossaire.md** : Termes et définitions
- **guides/** : Guides pratiques
"@

Set-Content -Path "05-references/README.md" -Value $refReadme -Encoding UTF8
Write-Host "✓ Créé: 05-references/README.md" -ForegroundColor Green

# 05-references/iso27001-annexe-a.md
$annexeA = @"
# ISO 27001:2022 - Annexe A

## Les 4 thèmes et 93 mesures de sécurité

### A.5 - Mesures organisationnelles (37 mesures)
- Politiques de sécurité
- Rôles et responsabilités
- Gestion des actifs
- Ressources humaines

### A.6 - Mesures liées aux personnes (8 mesures)
- Sensibilisation et formation
- Processus disciplinaire

### A.7 - Mesures physiques (14 mesures)
- Périmètres de sécurité physique
- Contrôle d'accès physique
- Protection contre les menaces environnementales

### A.8 - Mesures techniques (34 mesures)
- Sécurité des réseaux
- Contrôle d'accès logique
- Cryptographie
- Gestion des vulnérabilités
- Journalisation et surveillance
"@

Set-Content -Path "05-references/iso27001-annexe-a.md" -Value $annexeA -Encoding UTF8
Write-Host "✓ Créé: 05-references/iso27001-annexe-a.md" -ForegroundColor Green

# 05-references/glossaire.md
$glossaire = @"
# Glossaire SMSI

**Actif** : Tout élément ayant de la valeur pour l'organisation

**Mesure de sécurité** : Moyen de traiter un risque

**Risque** : Effet de l'incertitude sur les objectifs

**SMSI** : Système de Management de la Sécurité de l'Information

**Vulnérabilité** : Faiblesse d'un actif ou d'une mesure

**Menace** : Cause potentielle d'incident
"@

Set-Content -Path "05-references/glossaire.md" -Value $glossaire -Encoding UTF8
Write-Host "✓ Créé: 05-references/glossaire.md" -ForegroundColor Green

# 05-references/guides/guide-mise-en-oeuvre.md
$guideMise = @"
# Guide de Mise en Œuvre ISO 27001

## Phase 1 : Préparation
1. Définir le périmètre du SMSI
2. Identifier les parties prenantes
3. Constituer l'équipe projet

## Phase 2 : Analyse
1. Inventaire des actifs
2. Analyse de risques
3. Définition des objectifs de sécurité

## Phase 3 : Mise en œuvre
1. Sélection des mesures de l'Annexe A
2. Rédaction des politiques et procédures
3. Déploiement des mesures techniques

## Phase 4 : Vérification
1. Audit interne
2. Revue de direction
3. Amélioration continue
"@

Set-Content -Path "05-references/guides/guide-mise-en-oeuvre.md" -Value $guideMise -Encoding UTF8
Write-Host "✓ Créé: 05-references/guides/guide-mise-en-oeuvre.md" -ForegroundColor Green

# 05-references/guides/guide-auditeur.md
$guideAudit = @"
# Guide de l'Auditeur ISO 27001

## Préparation de l'audit
- Revue documentaire préalable
- Plan d'audit
- Liste de contrôle

## Conduite de l'audit
- Entretiens avec les responsables
- Observation des pratiques
- Examen des preuves

## Rapport d'audit
- Non-conformités majeures
- Non-conformités mineures
- Opportunités d'amélioration
- Conclusion sur la conformité
"@

Set-Content -Path "05-references/guides/guide-auditeur.md" -Value $guideAudit -Encoding UTF8
Write-Host "✓ Créé: 05-references/guides/guide-auditeur.md" -ForegroundColor Green

Write-Host "`nStructure créée avec succès!" -ForegroundColor Green
Write-Host "`nArborescence du projet :" -ForegroundColor Yellow
Get-ChildItem -Recurse -Directory | Select-Object FullName

Write-Host "`nProchaines étapes :" -ForegroundColor Cyan
Write-Host "   1. Personnaliser les fichiers README.md"
Write-Host "   2. Créer les fichiers Excel/Word (checklist, matrices, politiques)"
Write-Host "   3. Développer les outils HTML et Python"
Write-Host "   4. Initialiser un dépôt Git : git init"