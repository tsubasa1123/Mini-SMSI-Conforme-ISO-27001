# PROCÉDURE DE GESTION DES INCIDENTS DE SÉCURITÉ

**Référence:** PROC-SEC-001  
**Version:** 1.0  
**Date:** [DATE]  
**Propriétaire:** RSSI  
**Statut:** Validé  
**Classification:** 🟠 Restreint

---

##  OBJECTIF

Cette procédure définit le processus de **détection, signalement, traitement et résolution** des incidents de sécurité de l'information.

##  PÉRIMÈTRE

Cette procédure s'applique à tous les incidents affectant :
- La confidentialité, l'intégrité ou la disponibilité des informations
- Les systèmes d'information et infrastructures
- Les locaux et équipements physiques

##  RÉFÉRENCES

- Politique de sécurité de l'information
- ISO/IEC 27035 - Gestion des incidents de sécurité
- RGPD - Notification des violations de données (Art. 33 et 34)

---

## 1. DÉFINITIONS

### 1.1 Événement de sécurité
Occurrence identifiée d'un changement d'état d'un système ou service.

**Exemples:**
- Alerte antivirus
- Tentative de connexion échouée
- Scan de ports détecté
- Modification de fichier système

### 1.2 Incident de sécurité
Événement ayant un **impact réel ou potentiel** sur la sécurité de l'information.

**Exemples:**
- Infection par malware confirmée
- Accès non autorisé avéré
- Perte ou vol de données
- Interruption de service non planifiée

### 1.3 Criticité

| Niveau | Définition | Délai de réaction |
|--------|------------|-------------------|
| **🔴 CRITIQUE** | Impact majeur sur l'activité, données sensibles compromises, interruption service critique | **Immédiat** (< 1h) |
| **🟠 HAUTE** | Impact significatif, potentiel de propagation, données importantes | **4 heures** |
| **🟡 MOYENNE** | Impact limité, incident contenu, données non sensibles | **24 heures** |
| **🟢 BASSE** | Impact négligeable, pas de donnée affectée | **5 jours** |

---

## 2. RÔLES ET RESPONSABILITÉS

### 2.1 Utilisateurs
 Signaler **immédiatement** tout incident suspecté  
 Ne pas tenter de résoudre seul un incident de sécurité  
 Préserver les preuves (ne pas éteindre, ne pas supprimer)  
 Suivre les consignes de l'équipe d'intervention

### 2.2 Équipe de Réponse aux Incidents (ERI)

**Composition:**
- **Responsable:** RSSI (coordinateur et décisionnaire)
- **Membres permanents:** 
  - Administrateurs systèmes et réseaux
  - Responsable sécurité
  - Référent juridique/DPO
- **Membres ponctuels selon incident:** 
  - Experts métiers
  - Prestataires externes
  - Communication/RP

**Missions:**
- Analyser et qualifier les incidents
- Coordonner la réponse technique
- Communiquer avec les parties prenantes
- Documenter exhaustivement les incidents
- Proposer des actions correctives et préventives

### 2.3 Direction
- Arbitre les décisions majeures (arrêt de service, dépôt de plainte)
- Valide les communications externes
- Alloue les ressources d'urgence nécessaires
- Valide l'acceptation des risques résiduels

---

## 3. PROCESSUS DE GESTION

### 3.1 Vue d'ensemble du processus

```
┌─────────────┐
│  DÉTECTION  │ → Automatique (SIEM, antivirus) ou Manuelle (utilisateur)
└──────┬──────┘
       ↓
┌─────────────┐
│ SIGNALEMENT │ → Hotline, email, ticket
└──────┬──────┘
       ↓
┌──────────────┐
│QUALIFICATION │ → Évaluation criticité + périmètre
└──────┬───────┘
       ↓
┌─────────────┐
│   ANALYSE   │ → Investigation technique + collecte preuves
└──────┬──────┘
       ↓
┌─────────────┐
│ TRAITEMENT  │ → Confinement → Éradication → Récupération
└──────┬──────┘
       ↓
┌──────────────┐
│COMMUNICATION│ → Interne + Externe (CNIL, autorités)
└──────┬───────┘
       ↓
┌─────────────┐
│POST-MORTEM  │ → Analyse rétrospective + actions correctives
└──────┬──────┘
       ↓
┌─────────────┐
│   CLÔTURE   │ → Documentation + archivage
└─────────────┘
```

---

## 4. PHASE 1 - DÉTECTION

### 4.1 Sources de détection

**Automatiques:**
- 🤖 Alertes SIEM / SOC
- 🤖 Antivirus / EDR
- 🤖 IDS/IPS (Intrusion Detection/Prevention)
- 🤖 Monitoring système (nagios, zabbix, etc.)
- 🤖 DLP (Data Loss Prevention)
- 🤖 Analyse de logs

**Manuelles:**
- 👤 Signalement utilisateur
- 👤 Audit de sécurité
- 👤 Alerte d'un tiers (client, partenaire, CERT)
- 👤 Revue des logs

### 4.2 Indicateurs d'incidents (IoC - Indicators of Compromise)

⚠️ **Signes techniques à surveiller:**
- Ralentissement anormal et inexpliqué des systèmes
- Redémarrages intempestifs
- Fichiers modifiés, supprimés ou chiffrés sans raison
- Comptes créés ou modifiés sans autorisation
- Trafic réseau inhabituel (volume, destination)
- Connexions à des heures anormales
- Tentatives de connexion multiples échouées
- Alertes antivirus répétées
- Processus inconnus en cours d'exécution
- Modifications de configuration non planifiées

⚠️ **Signes comportementaux:**
- Emails suspects ou non sollicités
- Demandes inhabituelles d'informations sensibles
- Comportement anormal d'un utilisateur
- Plaintes de clients (ex: spam depuis votre domaine)

---

## 5. PHASE 2 - SIGNALEMENT

### 5.1 Moyens de signalement

**EN URGENCE (24/7):**
- 📞 **Hotline incidents:** [NUMÉRO À RENSEIGNER]
- 📧 **Email prioritaire:** incidents@[organisation].com
- 💬 **Chat interne:** Canal #incidents-sécurité (Teams/Slack)

**HORAIRES NORMAUX:**
- 🎫 **Ticket:** ServiceNow / Jira avec catégorie "Sécurité"
- 📧 **Email RSSI:** rssi@[organisation].com

### 5.2 Informations à fournir lors du signalement

**MINIMUM REQUIS:**
- ✅ **Votre identité** : Nom, prénom, service, coordonnées
- ✅ **Date et heure** de découverte de l'incident
- ✅ **Description claire** de ce qui s'est passé
- ✅ **Système(s) affecté(s)** : Poste, serveur, application
- ✅ **Impact constaté** : Ce qui ne fonctionne plus, données affectées

**SI POSSIBLE (mais important):**
- 📸 Captures d'écran des messages d'erreur ou comportements anormaux
- 📄 Messages d'erreur exacts (copier-coller)
- 📁 Fichiers suspects (NE PAS OUVRIR - les transmettre zippés avec mot de passe)
- 📊 Logs ou extraits de journaux
- 🕐 Chronologie précise des événements

### 5.3 Consignes immédiates à l'utilisateur

**✅ À FAIRE IMMÉDIATEMENT:**
- ✅ **Signaler sans délai** à la hotline ou RSSI
- ✅ **Noter précisément** l'heure et tous les détails
- ✅ **Prendre des captures d'écran** si possible
- ✅ **Isoler** la machine du réseau si vous savez le faire (débrancher câble réseau ou désactiver Wi-Fi)
- ✅ **Préserver les preuves** : ne rien modifier

**❌ NE SURTOUT PAS:**
- ❌ **Éteindre** le système (perte de preuves en mémoire RAM)
- ❌ **Tenter de résoudre seul** l'incident
- ❌ **Supprimer** des fichiers suspects
- ❌ **Communiquer largement** (risque de panique ou d'alerter l'attaquant)
- ❌ **Payer une rançon** sans accord explicite de la direction
- ❌ **Brancher une clé USB** sur une machine compromise

---

## 6. PHASE 3 - QUALIFICATION

### 6.1 Évaluation initiale (dans les 30 minutes)

Le RSSI ou membre de l'ERI évalue :

1. **Réalité de l'incident** : S'agit-il d'un vrai incident ou d'un faux positif ?
2. **Criticité** : Niveau de gravité (Critique / Haute / Moyenne / Basse)
3. **Périmètre** : Nombre de systèmes/utilisateurs affectés
4. **Type de données** : Données sensibles impliquées ?

### 6.2 Grille d'attribution de criticité

#### 🔴 CRITIQUE - Impact majeur

**Critères (un seul suffit):**
- Indisponibilité d'un service critique (> 4h prévu)
- Compromission avérée de données confidentielles
- Ransomware avec chiffrement de données
- Intrusion avec prise de contrôle de systèmes
- Fuite massive de données personnelles (> 100 personnes)
- Compromission d'un système critique (AD, serveur production)

**Actions déclenchées:**
- ⚡ Activation immédiate de l'ERI complète
- ⚡ Information de la Direction dans l'heure
- ⚡ Mobilisation 24/7 jusqu'à résolution
- ⚡ Activation du PCA si nécessaire

#### 🟠 HAUTE - Impact significatif

**Critères:**
- Malware détecté mais apparemment contenu
- Tentative d'intrusion détectée et bloquée
- Indisponibilité partielle de service (< 4h)
- Accès non autorisé sans exfiltration confirmée
- Fuite limitée de données non critiques

**Actions déclenchées:**
- 🔶 Activation ERI en horaires ouvrés
- 🔶 Information du management sous 4h
- 🔶 Traitement prioritaire
- 🔶 Surveillance renforcée

#### 🟡 MOYENNE - Impact limité

**Critères:**
- Tentatives de phishing ciblées
- Alertes antivirus ponctuelles et traitées
- Violation mineure de politique de sécurité
- Incident rapidement contenu sans propagation

**Actions déclenchées:**
- 🟨 Traitement standard par l'équipe IT
- 🟨 Documentation dans le registre
- 🟨 Information RSSI sous 24h

#### 🟢 BASSE - Impact négligeable

**Critères:**
- Faux positifs confirmés
- Violations mineures de politique sans impact
- Événements de sécurité sans conséquence réelle

**Actions déclenchées:**
- 🟩 Suivi standard
- 🟩 Éventuellement sensibilisation de l'utilisateur
- 🟩 Documentation sommaire

---

## 7. PHASE 4 - ANALYSE

### 7.1 Investigation technique

**Objectifs:**
- 🔍 Identifier la **cause racine** de l'incident
- 🔍 Déterminer le **point d'entrée** (vecteur d'attaque)
- 🔍 Évaluer l'**étendue du compromis** (propagation)
- 🔍 Identifier les **données affectées**
- 🔍 Comprendre la **chronologie complète**

**Moyens techniques:**
- Analyse centralisée de logs (SIEM)
- Forensique disque (imagerie, analyse fichiers)
- Analyse mémoire RAM (processus, connexions)
- Analyse réseau (captures PCAP, flux)
- Analyse de malware (sandbox, reverse engineering)
- Vérification d'intégrité (hash, checksums)

### 7.2 Collecte et préservation des preuves

**⚠️ Ordre de volatilité (du + au - volatil - à collecter dans cet ordre):**
1. **Registres CPU, cache** (quelques nanosecondes)
2. **Mémoire RAM** (perdue à l'extinction)
3. **État réseau** (connexions actives, tables de routage)
4. **Processus en cours** (liste, arborescence)
5. **Disque dur** (fichiers, secteurs)
6. **Logs distants** (SIEM, syslog)
7. **Configuration système**
8. **Documentation papier**

**🔒 Chaîne de traçabilité (Chain of Custody):**
- ✅ Horodatage précis de chaque action
- ✅ Hash (MD5, SHA256) des fichiers collectés
- ✅ Conservation en lieu sûr et isolé
- ✅ Documentation complète : qui a fait quoi, quand, comment
- ✅ Signature et scellement si preuve judiciaire

**📋 Formulaire de collecte de preuves:**
```
Date/Heure collecte : [DATE HEURE]
Collecteur : [NOM]
Système source : [HOSTNAME / IP]
Type de preuve : [Disque / RAM / Logs / Autre]
Hash MD5 : [HASH]
Hash SHA256 : [HASH]
Stockage : [LIEU PHYSIQUE]
Observations : [NOTES]
```

---

## 8. PHASE 5 - TRAITEMENT

### 8.1 Containment (Confinement)

**Objectif:** Limiter la propagation et l'impact

**Actions possibles (selon contexte):**
- 🚫 **Isolation réseau** du/des système(s) compromis (VLAN, déconnexion physique)
- 🚫 **Désactivation de comptes** utilisateurs suspects
- 🚫 **Blocage d'adresses IP/domaines** malveillants (pare-feu, proxy)
- 🚫 **Mise hors ligne temporaire** de services affectés
- 🚫 **Révocation de certificats** ou jetons d'authentification
- 🚫 **Changement de mots de passe** (comptes à risque)

**⚠️ ATTENTION:** 
- Ne pas alerter l'attaquant trop tôt (surveillance discrète possible avant confinement)
- Documenter toutes les actions prises
- Considérer l'impact métier du confinement

### 8.2 Éradication

**Objectif:** Éliminer complètement la menace

**Actions selon type d'incident:**

**Malware:**
- 🧹 Suppression complète du malware et ses variantes
- 🧹 Suppression des clés de registre, tâches planifiées, services créés
- 🧹 Vérification d'absence de persistance (backdoor, rootkit)

**Intrusion:**
- 🧹 Fermeture de toutes les backdoors identifiées
- 🧹 Correction des vulnérabilités exploitées (patch, configuration)
- 🧹 Révocation de tous les accès compromis

**Données:**
- 🧹 Suppression de données exfiltrées (si possible - demande à l'attaquant ou hébergeur)
- 🧹 Chiffrement ou destruction sécurisée si données restent exposées

**Commun:**
- 🧹 Changement de tous les mots de passe potentiellement compromis
- 🧹 Révocation de toutes les sessions actives
- 🧹 Mise à jour/durcissement des configurations

### 8.3 Récupération

**Objectif:** Rétablir le service en toute sécurité

**Actions:**
- ✅ **Restauration** à partir de sauvegardes saines (vérifiées non compromises)
- ✅ **Réinstallation complète** des systèmes si nécessaire (clean install)
- ✅ **Application de tous les correctifs** et mises à jour
- ✅ **Durcissement de la configuration** (hardening)
- ✅ **Tests de bon fonctionnement** complets
- ✅ **Surveillance renforcée** minimum 72h après remise en production

**✅ Validation avant remise en production (checklist):**
- [ ] Systèmes scannés (antivirus, vulnérabilités) : Aucune détection
- [ ] Tous les correctifs critiques appliqués
- [ ] Configurations renforcées (hardening checklist complétée)
- [ ] Logs activés et centralisés (SIEM)
- [ ] Monitoring actif configuré avec alertes
- [ ] Sauvegardes fonctionnelles et testées
- [ ] Documentation technique à jour
- [ ] Formation des utilisateurs si nécessaire

---

## 9. PHASE 6 - COMMUNICATION

### 9.1 Communication interne

**Pendant l'incident:**
- 📢 **Points réguliers** avec l'ERI (toutes les 2h pour incidents critiques)
- 📢 **Information direction** immédiate pour criticité haute/critique
- 📢 **Communication ciblée** aux utilisateurs impactés (sans détails techniques sensibles)
- 📢 **Updates** réguliers aux parties prenantes

**Template de communication interne:**
```
OBJET: [INCIDENT] Incident de sécurité en cours - Niveau [CRITICITÉ]

Chers collaborateurs,

Un incident de sécurité de niveau [CRITICITÉ] a été détecté le [DATE] à [HEURE].

📋 IMPACT:
[Description de l'impact utilisateur]

🔧 SERVICES AFFECTÉS:
[Liste des services impactés]

⚙️ ACTIONS EN COURS:
[Description des actions de résolution]

⏱️ ESTIMATION RÉSOLUTION:
[Délai estimé]

📱 CONSIGNES:
[Instructions spécifiques aux utilisateurs]

🔄 PROCHAINE COMMUNICATION:
[Date/Heure du prochain point]

Pour toute question urgente: [CONTACT]

Cordialement,
L'équipe de réponse aux incidents
```

### 9.2 Communication externe

#### 9.2.1 Autorités et régulateurs

**CNIL (si violation de données personnelles):**
- **Délai:** **72 heures** maximum après découverte
- **Conditions:** Si risque pour les droits et libertés des personnes
- **Contenu:** Nature de la violation, données concernées, conséquences, mesures prises
- **Contact:** https://www.cnil.fr/

**ANSSI (si incident majeur sur OIV/OSE):**
- **Délai:** Signalement volontaire recommandé ou obligatoire selon statut
- **Contact:** cert-fr@ssi.gouv.fr

**Police/Justice:**
- Si infraction pénale constatée (piratage, vol de données, extorsion)
- Dépôt de plainte recommandé pour préserver droits

#### 9.2.2 Parties prenantes externes

**Clients affectés:**
- Si leurs données ont été compromises
- Communication claire et honnête
- Mesures de protection proposées

**Partenaires / Fournisseurs:**
- Si leurs systèmes interconnectés potentiellement affectés
- Coordination de la réponse

**Assureur cyber:**
- Notification selon les termes du contrat
- Fourniture des éléments d'évaluation

**Presse/Médias:**
- Uniquement via le service communication
- Avec validation préalable direction + juridique

**⚠️ IMPORTANT:** 
Toute communication externe doit être **validée par la Direction ET le service juridique** avant diffusion.

---

## 10. PHASE 7 - POST-MORTEM

### 10.1 Analyse rétrospective

**Délai:** Dans les **5 jours ouvrés** suivant la clôture (pour incidents haute criticité)

**Participants obligatoires:**
- ERI complète
- Management des services concernés
- Représentant de la direction (si critique)

**Questions clés à traiter:**

1. **Qu'est-ce qui s'est passé ?**
   - Chronologie détaillée et précise
   - Cause racine identifiée
   - Vecteur d'attaque

2. **Comment avons-nous détecté l'incident ?**
   - Délai de détection
   - Efficacité des outils de détection
   - Amélioration possibles

3. **Quelle a été l'efficacité de notre réponse ?**
   - Respect des délais de traitement
   - Coordination de l'équipe
   - Disponibilité des ressources

4. **Qu'est-ce qui a bien fonctionné ?**
   - Points positifs à consolider
   - Bonnes pratiques à généraliser

5. **Qu'est-ce qui peut être amélioré ?**
   - Lacunes identifiées
   - Processus à optimiser
   - Outils manquants

6. **Quelles leçons retenir ?**
   - Enseignements pour l'organisation
   - Prévention d'incidents similaires

### 10.2 Rapport d'incident

**Contenu du rapport (minimum):**

1. **Résumé exécutif** (1 page max)
   - Nature de l'incident
   - Impact
   - Actions menées
   - Coût estimé

2. **Chronologie détaillée**
   - Timeline précise avec horodatage
   - Événements clés

3. **Analyse technique**
   - Cause racine (Root Cause Analysis)
   - Vecteur d'attaque
   - Vulnérabilités exploitées
   - Techniques utilisées (MITRE ATT&CK)

4. **Impact**
   - Financier (estimation)
   - Réputationnel
   - Données compromises (volume, sensibilité)
   - Temps d'indisponibilité

5. **Actions menées**
   - Confinement
   - Éradication
   - Récupération
   - Timeline des actions

6. **Recommandations**
   - Actions correctives (court terme)
   - Actions préventives (moyen/long terme)
   - Investissements nécessaires

7. **Plan d'actions correctives** (voir ci-dessous)

**Destinataires:**
- Direction Générale
- RSSI / DSI
- Comité de sécurité
- Archivage sécurisé (conservation 5 ans minimum)

### 10.3 Plan d'actions correctives (PAC)

**Format standardisé:**

| ID | Action | Responsable | Échéance | Priorité | Budget | Statut |
|----|--------|-------------|----------|----------|--------|--------|
| PAC-001 | Corriger vulnérabilité CVE-XXXX sur serveurs web | Admin Sys | J+15 | 🔴 Haute | 0€ | ⏳ En cours |
| PAC-002 | Former tous les utilisateurs anti-phishing | RH | M+1 | 🟠 Moyenne | 2k€ | 📋 Planifié |
| PAC-003 | Déployer EDR sur tous les postes | DSI | M+2 | 🔴 Haute | 15k€ | 💰 Budget validé |
| PAC-004 | Renforcer monitoring serveurs critiques | SOC | J+30 | 🔴 Haute | 5k€ | ⏳ En cours |

**Suivi:** Revue mensuelle en comité de sécurité jusqu'à complétion de toutes les actions.

---

## 11. DOCUMENTATION

### 11.1 Registre des incidents

**Outil:** Excel / CSV / Base de données / SIEM

**Champs obligatoires:**

| Champ | Description | Exemple |
|-------|-------------|---------|
| **ID incident** | Numéro unique | INC-2024-042 |
| **Date/Heure détection** | Timestamp | 2024-12-07 14:23:00 |
| **Détecté par** | Personne ou système | Utilisateur Dupont / SIEM |
| **Type d'incident** | Catégorie | Malware, Intrusion, Fuite données, etc. |
| **Criticité** | Niveau | Critique / Haute / Moyenne / Basse |
| **Systèmes affectés** | Liste | SRV-WEB-01, PC-FIN-15 |
| **Description** | Résumé court | Ransomware détecté, 3 fichiers chiffrés |
| **Actions menées** | Liste | Isolation, nettoyage, restauration |
| **Statut** | État actuel | Ouvert / En cours / Résolu / Clôturé |
| **Responsable** | Qui traite | RSSI Martin |
| **Date clôture** | Timestamp | 2024-12-08 09:15:00 |
| **Durée résolution** | Heures | 18h52min |
| **Impact** | Description | 2h indispo, aucune perte données |
| **Coût estimé** | Euros | 5 000€ |
| **Leçons apprises** | Résumé | Formation anti-phishing nécessaire |

### 11.2 Conservation et archivage

**Durées de conservation:**
- **Registre des incidents:** 5 ans minimum (7 ans recommandé)
- **Preuves techniques:** 3 ans minimum (ou plus selon obligations légales)
- **Rapports d'analyse:** 5 ans minimum
- **Logs d'incidents critiques:** 3 ans minimum

**Sécurisation:**
- Stockage chiffré
- Accès restreint (RSSI, Direction, Auditeurs)
- Sauvegardes redondantes
- Protection contre modification (WORM si possible)

---

## 12. INDICATEURS (KPI)

### 12.1 Métriques à suivre

| Indicateur | Cible | Fréquence mesure |
|------------|-------|------------------|
| **MTTD** (Mean Time To Detect) | < 2 heures | Mensuel |
| **MTTR** (Mean Time To Respond) | < 4 heures | Mensuel |
| **MTTR** (Mean Time To Resolve) | < 24 heures | Mensuel |
| **Nombre d'incidents par criticité** | Trend décroissant | Mensuel |
| **Taux de faux positifs** | < 20% | Mensuel |
| **% incidents avec post-mortem** | 100% (haute criticité) | Trimestriel |
| **Temps de récupération moyen** | < 8 heures | Mensuel |
| **% actions correctives réalisées** | 100% dans les délais | Mensuel |
| **Coût moyen par incident** | Trend décroissant | Trimestriel |

### 12.2 Reporting

**Mensuel:**
- Dashboard incidents vers comité de sécurité
- Top 5 des incidents
- État d'avancement des actions correctives

**Trimestriel:**
- Rapport détaillé + analyse de tendances
- Comparaison aux trimestres précédents
- Recommandations stratégiques

**Annuel:**
- Bilan global de la sécurité
- ROI des investissements sécurité
- Axes d'amélioration majeurs
- Budget prévisionnel

---

## 13. FORMATION ET SENSIBILISATION

### 13.1 Formation de l'ERI

**Fréquence:** Annuelle + après chaque incident majeur

**Contenu:**
- Revue de cette procédure
- Outils d'investigation (SIEM, forensique)
- Exercices de crise (tabletop exercise)
- Retours d'expérience incidents réels
- Simulation d'incidents (red team)

**Durée:** 1 jour minimum

### 13.2 Sensibilisation générale

**Fréquence:** Annuelle + campagnes ponctuelles

**Contenu pour tous les collaborateurs:**
- Comment reconnaître un incident
- Comment et à qui signaler rapidement
- Gestes à faire et ne pas faire
- Exemples d'incidents réels (anonymisés)
- Quiz de validation des connaissances

**Format:** E-learning interactif + sessions présentielles

---

## 14. CAS PARTICULIERS

### 14.1 Ransomware

**Actions spécifiques et ordre de priorité:**

1. **NE PAS PAYER la rançon** sans validation direction + juridique + RSSI
2. **Isolation immédiate et complète** : débrancher réseau, Wi-Fi, couper interconnexions
3. **Identification du ransomware** : famille, variante (ID Ransomware)
4. **Vérification des sauvegardes** : intégrité, disponibilité, non-chiffrement
5. **Évaluation de l'exfiltration** : données volées avant chiffrement ?
6. **Conservation des preuves** : ne pas éteindre, images disque
