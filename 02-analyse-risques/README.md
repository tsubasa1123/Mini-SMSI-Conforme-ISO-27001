#  Module d'Analyse de Risques ISO 27001

Ce module contient les outils et méthodologies pour réaliser une analyse complète des risques de sécurité de l'information.

##  Objectif

L'analyse de risques est le **cœur du SMSI ISO 27001**. Elle permet de :
- Identifier les actifs critiques et leurs vulnérabilités
- Évaluer les menaces et leur probabilité d'occurrence
- Calculer le niveau de risque
- Définir les mesures de traitement appropriées

##  Contenu du module

### Fichiers disponibles

- **outil-analyse-risques.html** - Outil web interactif d'analyse de risques
- **catalogue-menaces.md** - Catalogue exhaustif des menaces et vulnérabilités
- **matrice-risques.xlsx** - Matrice Excel pour calculs (à créer)
- **plan-traitement-risques.docx** - Template de PTR (à créer)

##  Utilisation rapide

### 1. Outil d'analyse interactif

```bash
# Ouvrir l'outil dans votre navigateur
open outil-analyse-risques.html
# ou
python -m http.server 8000
```

**Fonctionnalités :**
-  Matrice de risques visuelle (Probabilité × Impact)
-  Formulaire d'évaluation guidé
-  4 options de traitement (Réduire/Transférer/Éviter/Accepter)
-  Dashboard de suivi en temps réel
-  Export JSON du registre des risques

### 2. Méthodologie d'analyse

#### Étape 1 : Identifier les actifs

Listez tous vos actifs dans 3 catégories :

**Actifs primaires (informations) :**
- Données clients
- Propriété intellectuelle
- Données financières
- Code source
- Contrats

**Actifs de support (systèmes) :**
- Serveurs
- Applications
- Réseaux
- Postes de travail
- Cloud

**Actifs physiques :**
- Locaux
- Équipements
- Supports de stockage

#### Étape 2 : Identifier les menaces

Consultez le `catalogue-menaces.md` pour identifier :
- **Menaces humaines** : Erreur, malveillance, social engineering
- **Menaces techniques** : Malware, intrusion, vulnérabilités
- **Menaces environnementales** : Incendie, inondation, panne
- **Menaces organisationnelles** : Défaillance fournisseur, non-conformité

#### Étape 3 : Identifier les vulnérabilités

Pour chaque actif, identifiez ce qui le rend vulnérable :
- Mots de passe faibles
- Systèmes obsolètes
- Absence de sauvegarde
- Absence de chiffrement
- Accès non restreints
- Absence de monitoring

#### Étape 4 : Évaluer les risques

**Formule :** Risque = Probabilité × Impact

**Échelle de probabilité (1-5) :**
| Niveau | Description | Fréquence |
|--------|-------------|-----------|
| 1 | Très improbable | < 1 fois en 10 ans |
| 2 | Improbable | 1 fois en 2-10 ans |
| 3 | Possible | 1 fois par an |
| 4 | Probable | Plusieurs fois par an |
| 5 | Très probable | Mensuel ou plus |

**Échelle d'impact (1-5) :**
| Niveau | Description | Conséquences |
|--------|-------------|--------------|
| 1 | Négligeable | < 10k€, impact local |
| 2 | Mineur | 10-50k€, gêne temporaire |
| 3 | Modéré | 50-200k€, perturbation notable |
| 4 | Majeur | 200k-1M€, impact significatif |
| 5 | Catastrophique | > 1M€, mise en danger activité |

**Matrice de criticité :**

```
Impact →    1    2    3    4    5
Prob ↓
  5        🟡5  🟠10 🟠15 🔴20 🔴25
  4        🟢4  🟡8  🟠12 🟠16 🔴20
  3        🟢3  🟡6  🟡9  🟠12 🟠15
  2        🟢2  🟢4  🟡6  🟡8  🟠10
  1        🟢1  🟢2  🟢3  🟢4  🟡5

🟢 Faible (1-4) : Acceptable
🟡 Moyen (5-9) : À surveiller
🟠 Élevé (10-15) : Action requise
🔴 Critique (16-25) : Action immédiate
```

#### Étape 5 : Traiter les risques

Pour chaque risque, choisissez un traitement :

**1.  RÉDUIRE (le plus courant)**
- Mettre en place des contrôles de sécurité
- Exemple : Antivirus, pare-feu, formation, sauvegarde

**2. TRANSFÉRER**
- Assurance cyber
- Externalisation à un fournisseur certifié
- Clause contractuelle

**3.  ÉVITER**
- Ne pas réaliser l'activité à risque
- Arrêter le service ou la fonctionnalité
- Rare, mais parfois nécessaire

**4.  ACCEPTER**
- Assumer le risque résiduel
- Nécessite validation de la direction
- Pour risques faibles ou coût de traitement > coût du risque

##  Exemple complet

### Exemple : Risque Ransomware

**Actif :** Serveur de production + Base de données clients

**Menace :** Ransomware (M-T01)

**Vulnérabilité :**
- Pas d'EDR sur le serveur
- Sauvegardes non externalisées
- Pas de segmentation réseau

**Évaluation :**
- Probabilité : 4 (Probable - attaques fréquentes dans le secteur)
- Impact : 5 (Catastrophique - perte données + interruption activité)
- **Score : 4 × 5 = 20 (CRITIQUE)**

**Traitement choisi : RÉDUIRE**

**Mesures mises en place :**
1. Déployer EDR (CrowdStrike) - Coût : 5k€/an
2. Externaliser sauvegardes (cloud chiffré) - Coût : 2k€/an
3. Segmenter réseau (VLAN) - Coût : 3k€
4. Former utilisateurs anti-phishing - Coût : 1k€
5. Tester restauration trimestriellement - Coût : temps interne

**Coût total traitement : 11k€**

**Risque résiduel :**
- Probabilité : 2 (Réduit grâce aux contrôles)
- Impact : 3 (Sauvegardes permettent récupération rapide)
- **Score résiduel : 2 × 3 = 6 (MOYEN - Acceptable)**

**Décision : ACCEPTER le risque résiduel**

##  Critères d'acceptabilité des risques

Définissez vos seuils d'acceptabilité :

| Niveau de risque | Score | Décision |
|------------------|-------|----------|
| Faible | 1-4 |  Accepté automatiquement |
| Moyen | 5-9 |  Acceptation conditionnelle (validation manager) |
| Élevé | 10-15 |  Traitement obligatoire |
| Critique | 16-25 |  Traitement immédiat + validation direction |

##  Livrables de l'analyse

### 1. Registre des risques

Fichier Excel ou CSV contenant :
- ID du risque
- Actif concerné
- Menace / Vulnérabilité
- Probabilité brute
- Impact brut
- Score brut
- Traitement choisi
- Mesures de contrôle
- Probabilité résiduelle
- Impact résiduel
- Score résiduel
- Responsable
- Échéance
- Statut

### 2. Plan de Traitement des Risques (PTR)

Document listant :
- Les risques priorisés
- Les actions correctives
- Les responsables
- Les échéances
- Les budgets
- Les indicateurs de suivi

### 3. Déclaration d'Applicabilité (SoA)

Basée sur l'analyse de risques, sélection des contrôles de l'Annexe A :
- Contrôles applicables → justifier comment ils sont mis en œuvre
- Contrôles non applicables → justifier pourquoi

## Fréquence de mise à jour

L'analyse de risques doit être revue :

- **Minimum annuel** (exigence ISO 27001)
- **Après un incident majeur**
- **Lors d'un changement significatif** :
  - Nouveau système
  - Nouvelle activité
  - Changement d'infrastructure
  - Évolution réglementaire
  - Nouvelle menace émergente

##  Références méthodologiques

### Méthodes reconnues

- **EBIOS Risk Manager** (ANSSI, France) - Gratuit
- **ISO 31000** - Management du risque
- **ISO 27005** - Gestion des risques SI
- **MEHARI** (CLUSIF)
- **OCTAVE** (Carnegie Mellon)

### Bases de données de menaces

- **MITRE ATT&CK** - Tactiques et techniques d'attaque
- **CVE** - Vulnérabilités logicielles
- **ANSSI** - Bulletins d'actualité
- **CERT-FR** - Alertes de sécurité

##  Erreurs courantes à éviter

 **Analyse trop superficielle**
- Ne pas se limiter aux risques évidents
- Impliquer les métiers pour identifier tous les risques

 **Sous-estimer les risques "classiques"**
- Erreur humaine = cause n°1 des incidents
- Ne pas négliger les bases (sauvegarde, mots de passe)

 **Surcharger la matrice**
- Rester pragmatique : 20-50 risques suffisent
- Regrouper les risques similaires

 **Oublier le risque résiduel**
- Toujours réévaluer après mise en place des contrôles
- Documenter l'acceptation du risque résiduel

 **Ne pas impliquer la direction**
- Direction doit valider l'acceptation des risques critiques
- Direction doit arbitrer les budgets de traitement

##  Checklist d'une bonne analyse

- [ ] Tous les actifs critiques identifiés
- [ ] Menaces pertinentes au contexte
- [ ] Vulnérabilités réalistes
- [ ] Évaluations justifiées (pas au doigt mouillé)
- [ ] Traitements définis pour tous les risques élevés/critiques
- [ ] Responsables désignés
- [ ] Échéances fixées
- [ ] Budgets estimés
- [ ] Validation de la direction obtenue
- [ ] Registre à jour et accessible

##  Ressources pour aller plus loin

**Guides gratuits :**
- [EBIOS Risk Manager - Guide ANSSI](https://www.ssi.gouv.fr/entreprise/management-du-risque/la-methode-ebios-risk-manager/)
- [ISO 27005 - Guide d'application](https://www.iso.org/standard/75281.html)
- [NIST SP 800-30 - Guide for Conducting Risk Assessments](https://csrc.nist.gov/publications/detail/sp/800-30/rev-1/final)

**Outils complémentaires :**
- [RiskWatch](https://www.riskwatch.com/)
- [CRAMM](https://www.cramm.com/)
- [SimpleRisk](https://www.simplerisk.com/) - Open source

---

**Prochaine étape :** Utiliser l'analyse de risques pour sélectionner les contrôles applicables → [Module Documentation](../03-documentation/)