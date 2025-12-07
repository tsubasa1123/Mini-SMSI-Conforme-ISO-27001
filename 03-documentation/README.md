#  Module de Documentation SMSI

Ce module contient tous les templates de documentation nécessaires pour un SMSI conforme ISO 27001.

##  Objectif

Fournir des **templates prêts à l'emploi** pour :
- Politiques de sécurité (niveau stratégique)
- Procédures opérationnelles (niveau tactique)
- Registres de traçabilité (niveau opérationnel)

##  Structure de la documentation

```
03-documentation/
├── politiques/          # Niveau 1 - Stratégique
│   ├── politique-securite-globale.md
│   ├── politique-acces.md
│   ├── politique-mots-de-passe.md
│   ├── politique-classification.md
│   ├── politique-sauvegarde.md
│   ├── politique-cryptographie.md
│   ├── politique-cloud.md
│   └── politique-byod.md
│
├── procedures/          # Niveau 2 - Tactique
│   ├── procedure-gestion-incidents.md
│   ├── procedure-sauvegarde.md
│   ├── procedure-controle-acces.md
│   ├── procedure-gestion-changements.md
│   ├── procedure-onboarding.md
│   ├── procedure-offboarding.md
│   ├── procedure-patch-management.md
│   ├── procedure-audit-logs.md
│   ├── procedure-gestion-vulnerabilites.md
│   └── procedure-tests-pca.md
│
└── registres/           # Niveau 3 - Traçabilité
    ├── registre-actifs.csv
    ├── registre-incidents.csv
    ├── registre-risques.csv
    ├── registre-traitements.csv (RGPD)
    ├── registre-actions-correctives.csv
    └── registre-formations.csv
```

##  Pyramide documentaire ISO 27001

```
         ┌─────────────────────┐
         │  POLITIQUE GLOBALE  │  ← Direction
         │   (Niveau 1)        │
         └──────────┬──────────┘
                    │
         ┌──────────┴──────────┐
         │   POLITIQUES        │  ← RSSI
         │   SPÉCIFIQUES       │
         │   (Niveau 2)        │
         └──────────┬──────────┘
                    │
         ┌──────────┴──────────┐
         │   PROCÉDURES        │  ← Responsables
         │   (Niveau 3)        │
         └──────────┬──────────┘
                    │
         ┌──────────┴──────────┐
         │   INSTRUCTIONS      │  ← Opérateurs
         │   REGISTRES         │
         │   (Niveau 4)        │
         └─────────────────────┘
```

##  Différence Politique vs Procédure

### Politique (Niveau stratégique)

**Caractéristiques :**
- **Quoi** et **Pourquoi**
- Approuvée par la direction
- Principes généraux
- Rarement modifiée (revue annuelle)
- Court (5-15 pages)

**Exemple :**
> "Tous les accès aux données sensibles doivent être authentifiés et tracés."

### Procédure (Niveau opérationnel)

**Caractéristiques :**
- **Comment** et **Qui**
- Approuvée par le responsable métier
- Instructions détaillées
- Mise à jour régulière
- Plus long (10-30 pages)

**Exemple :**
> "1. L'utilisateur soumet une demande via le portail ServiceNow
> 2. Le manager valide la demande sous 2 jours ouvrés
> 3. L'admin provisionne le compte selon le modèle de rôle
> 4. L'utilisateur reçoit un email avec instructions..."

##  Comment utiliser les templates

### Étape 1 : Choisir le template

Identifiez le document dont vous avez besoin selon :
- Votre analyse de risques
- Les contrôles ISO 27001 applicables
- Vos exigences réglementaires

### Étape 2 : Personnaliser

**Ne copiez JAMAIS tel quel !**

Adaptez chaque template :
- Remplacez `[ORGANISATION]` par votre nom d'entreprise
- Ajustez selon votre taille et secteur
- Ajoutez des exemples concrets de votre contexte
- Supprimez ce qui ne s'applique pas
- Complétez les sections marquées `[À COMPLÉTER]`

### Étape 3 : Valider

Faites relire par :
- Les métiers concernés
- Le juridique (pour aspects légaux)
- La direction (pour politiques)
- Le RSSI (pour cohérence globale)

### Étape 4 : Diffuser

- Publier sur l'intranet
- Former les utilisateurs concernés
- Communiquer (email, réunion)
- Obtenir l'accusé de réception (politique)

### Étape 5 : Maintenir

- Revue annuelle minimum
- Mise à jour si changement significatif
- Versioning (v1.0, v1.1, v2.0...)
- Archivage des versions précédentes

##  Documents obligatoires ISO 27001

### Exigés explicitement

 **Champ d'application du SMSI** (clause 4.3)
 **Politique de sécurité** (clause 5.2)
 **Objectifs de sécurité** (clause 6.2)
 **Analyse de risques** (clause 6.1.2)
 **Plan de traitement des risques** (clause 6.1.3)
 **Déclaration d'applicabilité (SoA)** (clause 6.1.3)
 **Compétences** (clause 7.2)
 **Résultats de surveillance et mesure** (clause 9.1)
 **Programme d'audit interne** (clause 9.2)
 **Résultats des revues de direction** (clause 9.3)
 **Actions correctives** (clause 10.1)

### Recommandés fortement

⭐ Procédure de gestion des incidents
⭐ Procédure de contrôle d'accès
⭐ Procédure de sauvegarde
⭐ Registre des actifs
⭐ Registre des incidents
⭐ Plan de continuité d'activité (PCA)

##  Bonnes pratiques de rédaction

### Structure type d'une politique

```markdown
# TITRE DE LA POLITIQUE

**Version:** 1.0
**Date:** [DATE]
**Propriétaire:** [RSSI]
**Approbateur:** [Direction]
**Prochaine revue:** [DATE + 1 an]

---

## 1. OBJET ET PÉRIMÈTRE
[Pourquoi cette politique existe et à qui elle s'applique]

## 2. RÉFÉRENCES
[Normes, lois, autres documents]

## 3. DÉFINITIONS
[Termes clés]

## 4. PRINCIPES ET RÈGLES
[Le cœur de la politique]

## 5. RÔLES ET RESPONSABILITÉS
[Qui fait quoi]

## 6. SANCTIONS
[Conséquences du non-respect]

## 7. EXCEPTIONS
[Comment demander une exception]

## 8. REVUE ET MISE À JOUR
[Fréquence de revue]

---

**VALIDATION**

| Rôle | Nom | Signature | Date |
|------|-----|-----------|------|
| Direction | | | |
| RSSI | | | |
```

### Structure type d'une procédure

```markdown
# TITRE DE LA PROCÉDURE

**Référence:** PROC-XXX-001
**Version:** 1.0
**Date:** [DATE]
**Propriétaire:** [Responsable]
**Classification:** [Interne/Restreint]

---

## 1. OBJECTIF
[But de la procédure]

## 2. PÉRIMÈTRE
[À qui et quoi ça s'applique]

## 3. RÉFÉRENCES
[Politique associée, autres procédures]

## 4. DÉFINITIONS
[Termes techniques]

## 5. RÔLES ET RESPONSABILITÉS
[Matrice RACI]

## 6. DESCRIPTION DU PROCESSUS

### 6.1 Étape 1
1. Action 1
2. Action 2
[Diagramme de flux si complexe]

### 6.2 Étape 2
[...]

## 7. POINTS DE CONTRÔLE
[Vérifications à faire]

## 8. INDICATEURS
[KPI pour mesurer l'efficacité]

## 9. ENREGISTREMENTS
[Quoi tracer et où]

## 10. ANNEXES
[Formulaires, templates]
```

##  Checklist de qualité documentaire

### Pour chaque document

- [ ] **Clair** : Langage simple, pas de jargon inutile
- [ ] **Concis** : Aussi court que possible
- [ ] **Complet** : Toutes les infos nécessaires
- [ ] **Cohérent** : Pas de contradiction avec autres docs
- [ ] **À jour** : Date de dernière mise à jour récente
- [ ] **Applicable** : Réaliste et faisable
- [ ] **Contrôlable** : On peut vérifier le respect
- [ ] **Accessible** : Facile à trouver et consulter

### Pour l'ensemble de la documentation

- [ ] Pas de doublons
- [ ] Pas de trous (sujets non couverts)
- [ ] Hiérarchie logique
- [ ] Navigation facile (index, liens)
- [ ] Versioning clair
- [ ] Archive des anciennes versions

##  Templates disponibles

### Politiques (8 templates)

| Fichier | Contrôles ISO | Priorité |
|---------|---------------|----------|
| politique-securite-globale.md | A.5.1 | 🔴 Critique |
| politique-acces.md | A.9 | 🔴 Critique |
| politique-mots-de-passe.md | A.9.3 | 🔴 Critique |
| politique-classification.md | A.8.2 | 🟠 Haute |
| politique-sauvegarde.md | A.12.3 | 🔴 Critique |
| politique-cryptographie.md | A.10 | 🟠 Haute |
| politique-cloud.md | A.15 | 🟡 Moyenne |
| politique-byod.md | A.6.2.1 | 🟡 Moyenne |

### Procédures (10 templates)

| Fichier | Contrôles ISO | Priorité |
|---------|---------------|----------|
| procedure-gestion-incidents.md | A.16 | 🔴 Critique |
| procedure-sauvegarde.md | A.12.3 | 🔴 Critique |
| procedure-controle-acces.md | A.9.2 | 🔴 Critique |
| procedure-gestion-changements.md | A.12.1.2 | 🟠 Haute |
| procedure-onboarding.md | A.7.2 | 🟠 Haute |
| procedure-offboarding.md | A.7.3 | 🔴 Critique |
| procedure-patch-management.md | A.12.6 | 🟠 Haute |
| procedure-audit-logs.md | A.12.4 | 🟠 Haute |
| procedure-gestion-vulnerabilites.md | A.12.6 | 🟠 Haute |
| procedure-tests-pca.md | A.17 | 🟡 Moyenne |

### Registres (6 templates)

| Fichier | Usage | Format |
|---------|-------|--------|
| registre-actifs.csv | Inventaire des actifs | CSV/Excel |
| registre-incidents.csv | Suivi des incidents | CSV/Excel |
| registre-risques.csv | Analyse de risques | CSV/Excel |
| registre-traitements.csv | RGPD obligatoire | CSV/Excel |
| registre-actions-correctives.csv | Suivi actions | CSV/Excel |
| registre-formations.csv | Traçabilité formations | CSV/Excel |

##  Ordre de création recommandé

### Phase 1 : Documents stratégiques (Semaine 1-2)

1. Politique de sécurité globale
2. Analyse de risques
3. Déclaration d'applicabilité (SoA)

### Phase 2 : Politiques spécifiques (Semaine 3-4)

4. Politique de contrôle d'accès
5. Politique de classification
6. Politique de sauvegarde
7. Politique de mots de passe

### Phase 3 : Procédures critiques (Semaine 5-8)

8. Procédure de gestion des incidents
9. Procédure de contrôle d'accès (provisionning/deprovisionning)
10. Procédure de sauvegarde et restauration
11. Procédure onboarding/offboarding

### Phase 4 : Registres (Semaine 9-10)

12. Registre des actifs
13. Registre des incidents
14. Registre des risques
15. Registre des traitements (RGPD)

### Phase 5 : Compléments (Semaine 11-12)

16. Autres procédures selon besoins
17. Instructions de travail spécifiques
18. Formulaires et templates

##  Conservation et archivage

### Durées de conservation

| Type de document | Durée |
|------------------|-------|
| Politiques | Version actuelle + 3 versions archivées |
| Procédures | Version actuelle + 2 versions archivées |
| Registres | 5 ans minimum (RGPD : 3 ans min) |
| Rapports d'audit | 5 ans |
| Preuves d'incidents | 3-5 ans selon gravité |
| Logs de sécurité | 6 mois à 3 ans selon criticité |

### Système de versioning

```
v1.0 - Version initiale
v1.1 - Correction mineure
v1.2 - Ajout d'une section
v2.0 - Refonte majeure
```

**Nommage des fichiers :**
```
politique-acces_v1.2_20241207.md
procedure-incidents_v2.0_20241207.md
```

##  Indicateurs de qualité

Mesurez l'efficacité de votre documentation :

| Indicateur | Cible |
|------------|-------|
| % documents à jour (< 12 mois) | > 90% |
| Temps moyen de recherche info | < 5 min |
| % employés ayant lu politiques | 100% |
| Taux de non-conformités liées à méconnaissance | < 10% |
| Délai moyen validation document | < 15 jours |

##  Erreurs courantes

 **Sur-documentation**
→ Privilégier 10 documents utiles à 50 documents ignorés

 **Copier-coller sans adapter**
→ L'auditeur le détecte immédiatement

 **Langage trop technique/juridique**
→ Personne ne lira ni n'appliquera

 **Pas de communication**
→ Docs perdus sur un serveur quelque part

 **Pas de versioning**
→ Impossible de savoir quelle est la version valide

 **Oublier les registres**
→ Pas de preuves = non-conformité à l'audit

##  Support

**Besoin d'aide pour adapter un template ?**

Consultez les exemples fournis ou créez une issue sur GitHub.

---

**Prochaine étape :** Déployer les contrôles techniques et organisationnels → [Module Outils](../04-outils/)