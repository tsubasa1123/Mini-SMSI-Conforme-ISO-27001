# POLITIQUE DE SÉCURITÉ DE L'INFORMATION

**Organisation:** [NOM DE L'ORGANISATION]  
**Version:** 1.0  
**Date:** [DATE]  
**Propriétaire:** [RSSI / Direction]  
**Statut:** [Projet / Validé / Appliqué]  
**Classification:** 🟠 Restreint

---

##  TABLE DES MATIÈRES

1. [Objet et périmètre](#1-objet-et-périmètre)
2. [Références](#2-références)
3. [Définitions](#3-définitions)
4. [Principes généraux](#4-principes-généraux)
5. [Gouvernance de la sécurité](#5-gouvernance-de-la-sécurité)
6. [Organisation de la sécurité](#6-organisation-de-la-sécurité)
7. [Gestion des actifs](#7-gestion-des-actifs)
8. [Sécurité des ressources humaines](#8-sécurité-des-ressources-humaines)
9. [Contrôle d'accès](#9-contrôle-daccès)
10. [Sécurité physique](#10-sécurité-physique)
11. [Sécurité des opérations](#11-sécurité-des-opérations)
12. [Sécurité des communications](#12-sécurité-des-communications)
13. [Gestion des incidents](#13-gestion-des-incidents)
14. [Continuité d'activité](#14-continuité-dactivité)
15. [Conformité](#15-conformité)
16. [Sanctions](#16-sanctions)
17. [Revue et mise à jour](#17-revue-et-mise-à-jour)

---

## 1. OBJET ET PÉRIMÈTRE

### 1.1 Objet

La présente politique définit les règles et principes de sécurité de l'information applicables au sein de **[ORGANISATION]**. Elle vise à :

- Protéger la **confidentialité, l'intégrité et la disponibilité** des informations
- Garantir la **conformité** aux exigences légales et réglementaires
- Préserver la **réputation** et la continuité d'activité de l'organisation
- Définir les **responsabilités** en matière de sécurité de l'information

### 1.2 Périmètre d'application

Cette politique s'applique à :

 **Personnes concernées:**
- Tous les employés (CDI, CDD, stagiaires, alternants)
- Les prestataires, sous-traitants et partenaires
- Les utilisateurs externes ayant accès aux systèmes d'information
- Les membres du conseil d'administration

 **Systèmes et données:**
- Tous les systèmes d'information (SI) de l'organisation
- Toutes les données, quel que soit leur support (numérique, papier)
- Les locaux, équipements et infrastructures
- Les services externalisés (cloud, hébergement)

### 1.3 Entrée en vigueur

Cette politique entre en vigueur le **[DATE]** et remplace toute politique antérieure.

---

## 2. RÉFÉRENCES

### 2.1 Normes et standards

- **ISO/IEC 27001:2022** - Systèmes de management de la sécurité de l'information
- **ISO/IEC 27002:2022** - Code de bonnes pratiques
- **RGPD** (Règlement (UE) 2016/679) - Protection des données personnelles
- **Directive NIS 2** - Sécurité des réseaux et systèmes d'information

### 2.2 Documents associés

- Politique de classification de l'information
- Politique de contrôle d'accès
- Politique de gestion des mots de passe
- Charte d'utilisation des systèmes d'information
- Plan de continuité d'activité (PCA)
- Procédure de gestion des incidents

---

## 3. DÉFINITIONS

| Terme | Définition |
|-------|------------|
| **Actif** | Tout élément ayant de la valeur pour l'organisation (données, systèmes, personnel, locaux) |
| **Confidentialité** | Propriété selon laquelle l'information n'est accessible qu'aux personnes autorisées |
| **Intégrité** | Propriété selon laquelle l'information n'est pas altérée ou détruite de manière non autorisée |
| **Disponibilité** | Propriété selon laquelle l'information est accessible quand nécessaire |
| **Incident** | Événement indésirable affectant la sécurité de l'information |
| **Risque** | Combinaison de la probabilité d'un événement et de ses conséquences |
| **RSSI** | Responsable de la Sécurité des Systèmes d'Information |
| **DPO** | Délégué à la Protection des Données (Data Protection Officer) |

---

## 4. PRINCIPES GÉNÉRAUX

### 4.1 Engagement de la direction

La Direction s'engage à :

-  Fournir les ressources nécessaires à la sécurité de l'information
-  Approuver et communiquer cette politique
-  Définir des objectifs de sécurité mesurables
-  Intégrer la sécurité dans tous les projets
-  Promouvoir une culture de la sécurité

### 4.2 Objectifs de sécurité

L'organisation vise à :

1. **Protéger** les actifs informationnels contre toute menace
2. **Assurer** la disponibilité des services critiques (99,9% de disponibilité)
3. **Respecter** les obligations légales et contractuelles
4. **Détecter** et répondre aux incidents dans un délai de [X heures]
5. **Améliorer** continuellement la sécurité

### 4.3 Approche par les risques

La sécurité repose sur une **gestion des risques** formalisée :

- Identification et évaluation régulière des risques
- Mise en place de mesures de sécurité proportionnées
- Acceptation formelle des risques résiduels par la direction
- Révision annuelle de l'analyse de risques

---

## 5. GOUVERNANCE DE LA SÉCURITÉ

### 5.1 Comité de sécurité

Un comité de sécurité se réunit **trimestriellement** pour :

- Examiner les incidents majeurs
- Valider les évolutions de la politique
- Suivre les indicateurs de sécurité (KPI)
- Arbitrer les investissements sécurité

**Composition:**
- Direction Générale (Président)
- RSSI
- DSI
- DRH
- Directeur Juridique
- Responsables métiers

### 5.2 Rôles et responsabilités

| Rôle | Responsabilités |
|------|-----------------|
| **Direction** | Valide la politique, alloue les budgets, arbitre les risques |
| **RSSI** | Définit et pilote la stratégie de sécurité, assure la conformité |
| **DSI** | Met en œuvre les mesures techniques, gère les infrastructures |
| **Managers** | Font respecter la politique dans leur périmètre, sensibilisent |
| **Utilisateurs** | Appliquent les règles, signalent les incidents |
| **DPO** | Veille à la conformité RGPD |

---

## 6. ORGANISATION DE LA SÉCURITÉ

### 6.1 Séparation des tâches

Les fonctions sensibles sont séparées pour éviter les conflits d'intérêts :

- ❌ Développement ≠ Production
- ❌ Contrôle ≠ Exécution
- ❌ Administrateur ≠ Auditeur

### 6.2 Environnements

| Environnement | Usage | Données |
|---------------|-------|---------|
| **Production** | Exploitation | Données réelles |
| **Pré-production** | Tests avant MEP | Données anonymisées |
| **Développement** | Développements | Données fictives |

**Principe:** Les données de production ne doivent JAMAIS être utilisées hors production sans anonymisation.

---

## 7. GESTION DES ACTIFS

### 7.1 Inventaire des actifs

Un **registre des actifs** est maintenu à jour incluant :

- Matériel (serveurs, postes, équipements réseau)
- Logiciels et licences
- Données et bases de données
- Services externalisés
- Documentation

**Propriétaire:** Chaque actif a un propriétaire identifié responsable de sa sécurité.

### 7.2 Classification de l'information

| Niveau | Description | Exemples | Marquage |
|--------|-------------|----------|----------|
| **🔴 Confidentiel** | Impact critique si divulgué | Données financières, secrets industriels, données personnelles sensibles | [CONFIDENTIEL] |
| **🟠 Restreint** | Impact important | Contrats, RH, projets stratégiques | [RESTREINT] |
| **🟢 Interne** | Usage interne uniquement | Procédures, organigrammes | [INTERNE] |
| **⚪ Public** | Diffusable sans restriction | Plaquettes commerciales, site web | [PUBLIC] |

### 7.3 Marquage et traçabilité

- Les documents doivent être **marqués** selon leur classification
- Les transferts de données sensibles sont **tracés**
- Les supports contenant des données Confidentielles/Restreintes sont **chiffrés**

---

## 8. SÉCURITÉ DES RESSOURCES HUMAINES

### 8.1 Avant l'embauche

-  Vérification des références professionnelles
-  Signature d'une clause de confidentialité
-  Vérification des diplômes (pour postes sensibles)
-  Vérification du casier judiciaire (si applicable)

### 8.2 Pendant l'emploi

-  Formation à la sécurité dès l'arrivée (obligatoire)
-  Sensibilisation annuelle (e-learning + campagnes)
-  Signature de la charte informatique
-  Tests de phishing réguliers
-  Entretiens annuels incluant la sécurité

### 8.3 Fin d'emploi

Dans les **24 heures** suivant le départ :

- ❌ Désactivation immédiate de tous les comptes
- ❌ Récupération du matériel (PC, badge, téléphone, clés)
- ❌ Suppression des accès physiques et logiques
- ✅ Rappel écrit des obligations de confidentialité
- ✅ Restitution signée du matériel

---

## 9. CONTRÔLE D'ACCÈS

### 9.1 Principe du moindre privilège

Chaque utilisateur dispose **uniquement** des droits nécessaires à l'exercice de ses fonctions.

### 9.2 Authentification

**Obligatoire:**
  -  Mots de passe conformes à la politique (12 caractères min, complexité)
  -  Authentification multifacteur (MFA) pour :
  - Tous les comptes administrateurs
  - Accès VPN et distants
  - Accès aux données Confidentielles
  - Systèmes critiques

**Interdictions:**
- ❌ Partage de comptes ou mots de passe
- ❌ Utilisation de comptes génériques sauf exception validée
- ❌ Connexion avec compte admin pour usage courant

### 9.3 Gestion des comptes

- Les comptes sont créés sur **demande formelle validée** par le manager
- Revue des droits d'accès **semestrielle**
- Suppression automatique des comptes inutilisés > 90 jours
- Traçabilité de toutes les opérations sensibles

### 9.4 Accès distants

- VPN obligatoire pour tout accès distant aux ressources internes
- Appareils à jour et protégés (antivirus, pare-feu)
- Interdiction des Wi-Fi publics non sécurisés pour accès sensibles
- Utilisation recommandée d'un réseau mobile 4G/5G si nécessaire

---

## 10. SÉCURITÉ PHYSIQUE

### 10.1 Zones sécurisées

| Zone | Contrôle d'accès | Exemples |
|------|------------------|----------|
| **Zone 1 - Critique** | Badge + biométrie/code | Salle serveurs, datacenter |
| **Zone 2 - Restreinte** | Badge nominatif | Locaux IT, archives |
| **Zone 3 - Standard** | Badge ou code | Bureaux |
| **Zone 4 - Publique** | Libre avec surveillance | Accueil, salle de réunion visiteurs |

### 10.2 Protection des équipements

-  Serveurs en salle dédiée climatisée avec extinction automatique
-  Câblage réseau protégé et identifié
-  Postes de travail avec câble antivol (zones à risque)
-  Écrans de confidentialité pour données sensibles
-  Caméras de surveillance dans zones critiques

### 10.3 Politique "Bureau propre, écran vide"

-  Aucun document confidentiel/restreint visible hors présence
-  Verrouillage automatique du poste après 5 min d'inactivité
-  Destruction sécurisée des documents (broyage ou incinération)
-  Rangement systématique en fin de journée

---

## 11. SÉCURITÉ DES OPÉRATIONS

### 11.1 Sauvegarde

**Stratégie 3-2-1:**
- **3** copies des données
- Sur **2** supports différents
- **1** copie hors site (géographiquement distante)

**Fréquence:**
- Données critiques : Quotidienne (incrémentielles) + hebdomadaire (complète)
- Données importantes : Hebdomadaire
- Test de restauration : **Trimestriel obligatoire**

**Rétention:**
- Sauvegardes quotidiennes : 30 jours
- Sauvegardes mensuelles : 12 mois
- Sauvegardes annuelles : 7 ans

### 11.2 Protection contre les malwares

-  Antivirus professionnel sur tous les postes (maj automatiques)
-  EDR (Endpoint Detection and Response) sur serveurs critiques
-  Filtrage des emails (anti-spam, anti-phishing, sandboxing)
-  Blocage des extensions dangereuses (.exe, .bat, .vbs dans les emails)
-  Analyses complètes hebdomadaires

### 11.3 Gestion des correctifs

| Criticité | Délai d'application | Validation |
|-----------|---------------------|------------|
| **Critique** | 7 jours | Tests rapides obligatoires |
| **Importante** | 30 jours | Tests en pré-production |
| **Modérée** | 90 jours | Tests approfondis |

**Exceptions:** Les correctifs peuvent être reportés si risque de régression majeure, avec validation RSSI.

### 11.4 Journalisation et monitoring

**Conservation des logs:**
- Logs d'authentification : **1 an minimum**
- Logs d'accès aux données sensibles : **3 ans**
- Logs systèmes et applications : **6 mois**
- Logs de sécurité : **3 ans**

**Surveillance active:**
- Alertes temps réel pour événements critiques
- Revue quotidienne des alertes de sécurité
- Analyse mensuelle des tendances

---

## 12. SÉCURITÉ DES COMMUNICATIONS

### 12.1 Messagerie électronique

-  Chiffrement TLS obligatoire pour tous les emails
-  Vigilance accrue sur emails suspects (phishing, spear-phishing)
-  Interdiction d'envoyer des données Confidentielles par email sans chiffrement
-  Signature électronique pour documents officiels et contrats

**Bonnes pratiques:**
- Vérifier l'expéditeur avant d'ouvrir une pièce jointe
- Ne jamais cliquer sur un lien suspect
- Signaler immédiatement tout email de phishing

### 12.2 Échange de fichiers

**Données Confidentielles/Restreintes:**
- Via plateforme sécurisée d'échange uniquement (chiffrement de bout en bout)
- Limitation de la durée de partage (ex: 7 jours max)
- Notification du destinataire

**Interdictions formelles:**
- ❌ Clés USB non chiffrées pour données sensibles
- ❌ Services grand public (WeTransfer, Dropbox personnel, Google Drive perso)
- ❌ Messageries instantanées non approuvées (WhatsApp, Telegram personnel)

**Services autorisés:**
- [Liste des outils validés par l'organisation]

### 12.3 Télétravail

-  VPN obligatoire
-  Réseau Wi-Fi personnel sécurisé (WPA3 recommandé)
-  Séparation usage pro/perso
-  Interdiction d'utiliser matériel personnel pour données sensibles (BYOD non autorisé sauf validation)

---

## 13. GESTION DES INCIDENTS

### 13.1 Signalement obligatoire

**Obligation de signaler immédiatement au RSSI:**
- Perte ou vol de matériel contenant des données
- Suspicion de piratage, malware ou ransomware
- Fuite ou exposition de données
- Accès non autorisé constaté
- Comportement suspect d'un système
- Email de phishing reçu

**Contact d'urgence:** 
- 📧 incidents@[organisation].com
- 📞 [NUMÉRO HOTLINE] (24/7)

### 13.2 Délais de traitement

| Criticité | Délai de prise en compte | Délai de résolution cible |
|-----------|--------------------------|---------------------------|
| **Critique** | Immédiat (< 1h) | 4 heures |
| **Élevée** | 4 heures | 24 heures |
| **Moyenne** | 24 heures | 5 jours |
| **Faible** | 48 heures | 15 jours |

### 13.3 Post-mortem

Tout incident de criticité Élevée ou Critique fait l'objet d'une analyse post-mortem incluant :
- Chronologie détaillée
- Cause racine
- Actions correctives
- Plan de prévention

---

## 14. CONTINUITÉ D'ACTIVITÉ

### 14.1 Objectifs

- **RTO** (Recovery Time Objective) : **4 heures** pour services critiques
- **RPO** (Recovery Point Objective) : Perte maximale **1 heure** de données

### 14.2 Plan de Continuité d'Activité (PCA)

- Identification et classification des processus critiques
- Scénarios de crise documentés et testés
- Tests annuels **obligatoires** du PCA
- Mise à jour après chaque changement majeur
- Formation des équipes d'intervention

### 14.3 Plan de Reprise d'Activité (PRA)

- Site de secours ou solution cloud pour basculement
- Procédures de bascule documentées
- Contrats avec fournisseurs incluant SLA
- Tests semestriels de bascule

---

## 15. CONFORMITÉ

### 15.1 Exigences légales et réglementaires

L'organisation se conforme à :
- **RGPD** - Protection des données personnelles
- **Loi Informatique et Libertés**
- **Code du travail** (droit à la déconnexion, surveillance)
- **Directive NIS 2** (si applicable)
- **Réglementations sectorielles** (Santé, Finance, etc.)

### 15.2 Propriété intellectuelle

- Respect des licences logicielles
- Interdiction d'utiliser des logiciels piratés
- Respect du droit d'auteur
- Inventaire et suivi des licences

### 15.3 Audits

- **Audit interne** : Au minimum annuel
- **Audit externe** : Tous les 3 ans (certification ISO 27001)
- Audits surprise possibles par le RSSI
- Audits réglementaires selon obligations légales

---

## 16. SANCTIONS

### 16.1 Principe

Le non-respect de cette politique peut entraîner des sanctions **proportionnées** à la gravité et au caractère intentionnel de la faute.

### 16.2 Échelle de sanctions

| Gravité | Sanction |
|---------|----------|
| **Mineure** (1ère fois, non intentionnel) | Avertissement oral + sensibilisation |
| **Moyenne** (récidive, négligence) | Avertissement écrit + formation obligatoire |
| **Grave** (mise en danger, négligence lourde) | Mise à pied + sanctions contractuelles |
| **Très grave** (malveillance, vol de données) | Licenciement pour faute grave + poursuites judiciaires |

### 16.3 Exemples de violations graves

- Divulgation intentionnelle de données confidentielles
- Installation de logiciels malveillants
- Accès non autorisé aux systèmes
- Vol ou destruction de données
- Contournement des contrôles de sécurité

---

## 17. REVUE ET MISE À JOUR

### 17.1 Revue périodique

Cette politique est revue **au minimum annuellement** ou après :
- Incident de sécurité majeur
- Changement organisationnel significatif
- Évolution réglementaire importante
- Audit externe révélant des lacunes
- Évolution technologique majeure

### 17.2 Processus de mise à jour

1. Proposition de modification par le RSSI
2. Revue par le comité de sécurité
3. Validation par la Direction
4. Communication à tous les collaborateurs
5. Formation si nécessaire
6. Mise en application

### 17.3 Approbation

Cette politique est approuvée par :

| Fonction | Nom | Signature | Date |
|----------|-----|-----------|------|
| **Direction Générale** | [NOM] | | [DATE] |
| **RSSI** | [NOM] | | [DATE] |
| **DRH** | [NOM] | | [DATE] |
| **Directeur Juridique** | [NOM] | | [DATE] |

### 17.4 Communication

Cette politique est :
-  Diffusée à tous les collaborateurs par email
-  Accessible sur l'intranet (section Sécurité)
-  Présentée lors de l'onboarding (nouveaux arrivants)
-  Rappelée lors des campagnes de sensibilisation
-  Disponible auprès des RH et du RSSI

---

## 📞 CONTACTS

**RSSI:** [Nom] - [Email] - [Téléphone]  
**Hotline incidents (24/7):** [Numéro]  
**Email incidents:** incidents@[organisation].com  
**DPO:** [Nom] - [Email]

---

##  ANNEXES

### Annexe A - Politiques spécifiques associées

Cette politique globale est complétée par des politiques spécifiques :

1. Politique de contrôle d'accès
2. Politique de gestion des mots de passe
3. Politique de classification de l'information
4. Politique de sauvegarde
5. Politique de cryptographie
6. Politique d'utilisation acceptable (Charte informatique)
7. Politique BYOD (Bring Your Own Device)
8. Politique cloud

### Annexe B - Procédures associées

1. Procédure de gestion des incidents de sécurité
2. Procédure de gestion des accès
3. Procédure de sauvegarde et restauration
4. Procédure de gestion des changements
5. Procédure d'onboarding/offboarding
6. Procédure de tests du PCA

### Annexe C - Historique des versions

| Version | Date | Auteur | Modifications |
|---------|------|--------|---------------|
| 0.1 | [DATE] | [RSSI] | Création initiale |
| 1.0 | [DATE] | [RSSI] | Version approuvée |

---

**FIN DU DOCUMENT**

*Ce document est classifié 🟠 RESTREINT et destiné uniquement aux collaborateurs de [ORGANISATION].*  
*Toute diffusion externe nécessite l'autorisation de la Direction.*