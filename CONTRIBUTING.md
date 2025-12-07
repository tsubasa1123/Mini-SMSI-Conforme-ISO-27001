#  Guide de Contribution

Merci de votre intérêt pour contribuer à Mini-SMSI ISO 27001 ! Toute aide est la bienvenue.

##  Comment contribuer ?

### 1. Types de contributions acceptées

####  Corrections de bugs
- Signaler un bug via une [Issue](https://github.com/tsubasa1123/Mini-SMSI-Conforme-ISO-27001/issues)

- Proposer un correctif via une Pull Request

####  Nouvelles fonctionnalités
- Nouveaux outils interactifs
- Scripts d'automatisation
- Intégrations avec d'autres outils

####  Amélioration de la documentation
- Corrections de fautes
- Clarifications
- Nouveaux exemples
- Tutoriels vidéo

####  Nouveaux templates
- Politiques de sécurité supplémentaires
- Nouvelles procédures
- Modèles de documents

####  Traductions
- Traduire en anglais (priorité)
- Autres langues bienvenues

####  Design et UX
- Améliorer l'interface des outils HTML
- Rendre les rapports plus visuels

##  Processus de contribution

### Étape 1 : Fork le projet

Cliquez sur le bouton "Fork" en haut à droite du repository.

### Étape 2 : Cloner votre fork

```bash
git clone https://github.com/VOTRE-USERNAME/Mini-SMSI-Conforme-ISO-27001.git
cd Mini-SMSI-Conforme-ISO-27001
```

### Étape 3 : Créer une branche

```bash
# Pour une nouvelle fonctionnalité
git checkout -b feature/nom-fonctionnalite

# Pour un bug fix
git checkout -b fix/description-bug

# Pour de la documentation
git checkout -b docs/amelioration-doc
```

### Étape 4 : Faire vos modifications

- Respectez la structure existante
- Testez vos modifications
- Documentez vos changements

### Étape 5 : Commiter

```bash
git add .
git commit -m "Type: Description claire du changement

- Détail 1
- Détail 2
- Détail 3"
```

**Types de commit :**
- `feat:` Nouvelle fonctionnalité
- `fix:` Correction de bug
- `docs:` Documentation
- `style:` Formatage (pas de changement de code)
- `refactor:` Refactorisation
- `test:` Ajout de tests
- `chore:` Tâches diverses

### Étape 6 : Push

```bash
git push origin votre-branche
```

### Étape 7 : Créer une Pull Request

1. Allez sur votre fork sur GitHub
2. Cliquez sur "Compare & pull request"
3. Remplissez la description avec :
   - Ce que vous avez fait
   - Pourquoi vous l'avez fait
   - Comment tester vos changements

##  Checklist avant de soumettre

- [ ] Mon code respecte le style du projet
- [ ] J'ai testé mes modifications
- [ ] J'ai ajouté/mis à jour la documentation si nécessaire
- [ ] Mon commit est clair et descriptif
- [ ] J'ai vérifié qu'il n'y a pas de conflit avec `main`

##  Standards de code

### Pour le code Python

```python
# Utilisez des noms de variables descriptifs
def calculate_risk_score(probability, impact):
    """
    Calcule le score de risque.
    
    Args:
        probability (int): Probabilité de 1 à 5
        impact (int): Impact de 1 à 5
    
    Returns:
        int: Score de risque (probability × impact)
    """
    return probability * impact
```

### Pour le HTML/CSS/JavaScript

- Indentation : 4 espaces
- Noms de variables en camelCase
- Commentaires en français
- Code compatible avec les navigateurs modernes

### Pour le Markdown

- Titres en français
- Utiliser des emojis pour la lisibilité 
- Inclure des exemples concrets
- Structurer avec des sections claires

##  Review process

1. Vous soumettez une Pull Request
2. Un mainteneur la revoit sous 3-7 jours
3. Discussions et ajustements si nécessaire
4. Merge quand tout est OK 

##  Ce qui ne sera pas accepté

- Code malveillant ou dangereux
- Contenu offensant ou discriminatoire
- Violations de propriété intellectuelle
- Fonctionnalités non documentées
- Code non testé ou buggé

##  Idées de contributions

**Facile (Good First Issue) :**
- Corriger des fautes de frappe
- Ajouter des exemples dans le catalogue de menaces
- Améliorer le README
- Traduire un fichier en anglais

**Moyen :**
- Créer une nouvelle politique de sécurité
- Ajouter un script Python utile
- Améliorer le design des outils HTML
- Créer un tutoriel vidéo

**Avancé :**
- Développer une application web complète
- Intégration avec des APIs (Jira, Slack...)
- Dashboard Power BI / Tableau
- Export PDF avancé

##  Besoin d'aide ?

-  [Discussions GitHub](https://github.com/tsubasa1123/Mini-SMSI-Conforme-ISO-27001/discussions)
-  Créez une [Issue](https://github.com/tsubasa1123/Mini-SMSI-Conforme-ISO-27001/issues) avec le tag "question"

##  Remerciements

Tous les contributeurs seront mentionnés dans le README et le fichier CONTRIBUTORS.md.

Merci de faire avancer la cybersécurité open-source ! 