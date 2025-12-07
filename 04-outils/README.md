#  Module Outils et Automatisation

Ce module contient les scripts et outils pour automatiser et faciliter la gestion du SMSI.

##  Objectif

Automatiser les tâches répétitives et générer des rapports professionnels à partir de vos données SMSI.

##  Contenu

```
04-outils/
├── README.md
├── requirements.txt              # Dépendances Python
├── generateur-rapport.py         # Générateur de rapports HTML
├── dashboard-smsi.html           # Tableau de bord interactif
└── scripts/
    ├── export-pdf.py             # Export rapport en PDF
    ├── analyse-conformite.py     # Analyse taux de conformité
    ├── import-csv.py             # Import données CSV
    └── backup-data.py            # Sauvegarde des données
```

##  Installation

### Prérequis

- Python 3.8 ou supérieur
- pip (gestionnaire de paquets Python)

### Installation des dépendances

```bash
cd 04-outils
pip install -r requirements.txt
```

**Si requirements.txt n'existe pas encore, créez-le avec :**

```txt
# requirements.txt
# Pour le générateur de rapports
jinja2>=3.1.2
pandas>=2.0.0
matplotlib>=3.7.0
# Pour l'export PDF (optionnel)
weasyprint>=59.0
# Pour les graphiques avancés
plotly>=5.14.0
```

##  Générateur de Rapports

### Utilisation de base

```bash
python generateur-rapport.py
```

### Options avancées

```bash
# Spécifier les fichiers d'entrée
python generateur-rapport.py --actifs ../03-documentation/registres/registre-actifs.csv --incidents ../03-documentation/registres/registre-incidents.csv

# Spécifier le fichier de sortie
python generateur-rapport.py --output mon-rapport.html

# Mode verbose
python generateur-rapport.py --verbose
```

### Ce que génère le script

 Rapport HTML professionnel contenant :
- Résumé exécutif
- Statistiques des actifs
- Analyse des incidents
- Graphiques interactifs
- Recommandations

**Exemple de sortie :**
```
Génération du rapport SMSI ISO 27001

 Chargement des données...
   ✓ 15 actifs analysés
   ✓ 10 incidents analysés

 Génération du rapport...

 Rapport HTML généré: rapport-smsi.html

 Conseil: Ouvrez 'rapport-smsi.html' dans votre navigateur
```

##  Dashboard SMSI

### Lancement

```bash
# Ouvrir directement dans le navigateur
start dashboard-smsi.html

# Ou avec un serveur local
python -m http.server 8000
# Puis ouvrir: http://localhost:8000/dashboard-smsi.html
```

### Fonctionnalités du dashboard

- **Vue d'ensemble** : Métriques clés du SMSI
- **Conformité ISO 27001** : Taux par domaine
- **Gestion des risques** : Distribution et évolution
- **Incidents** : Statistiques et tendances
- **Actions correctives** : Suivi de l'avancement
- **Indicateurs (KPI)** : Graphiques temps réel

## 🔧 Scripts utilitaires

### 1. Export PDF

```bash
python scripts/export-pdf.py rapport-smsi.html rapport-smsi.pdf
```

**Prérequis** : `weasyprint` installé

### 2. Analyse de conformité

```bash
python scripts/analyse-conformite.py ../01-audit/resultats-audit.json
```

**Résultat** :
- Taux de conformité global
- Conformité par domaine
- Top 10 des écarts critiques
- Graphiques d'évolution

### 3. Import de données

```bash
python scripts/import-csv.py --type actifs --file mon-fichier.csv
```

**Types supportés** :
- `actifs` : Registre des actifs
- `incidents` : Registre des incidents
- `risques` : Registre des risques

### 4. Sauvegarde automatique

```bash
python scripts/backup-data.py
```

**Actions** :
- Sauvegarde tous les registres CSV
- Crée une archive datée
- Stocke dans `backups/`

##  Personnalisation

### Modifier les templates HTML

Les templates utilisent **Jinja2** pour le rendu dynamique.

**Structure d'un template :**

```html
<!DOCTYPE html>
<html>
<head>
    <title>{{ titre }}</title>
    <style>
        /* Votre CSS */
    </style>
</head>
<body>
    <h1>{{ titre }}</h1>
    
    {% for item in items %}
        <div class="item">{{ item.nom }}</div>
    {% endfor %}
    
    <script>
        // Votre JavaScript
    </script>
</body>
</html>
```

### Ajouter de nouveaux graphiques

Exemple avec **Plotly** :

```python
import plotly.graph_objects as go

# Créer un graphique
fig = go.Figure(data=[
    go.Bar(x=['A', 'B', 'C'], y=[10, 20, 15])
])

# Sauvegarder en HTML
fig.write_html('graphique.html')
```

## Automatisation avec Cron / Task Scheduler

### Linux/Mac (Cron)

```bash
# Ouvrir crontab
crontab -e

# Générer un rapport tous les lundis à 9h
0 9 * * 1 cd /chemin/vers/projet/04-outils && python generateur-rapport.py

# Sauvegarde quotidienne à minuit
0 0 * * * cd /chemin/vers/projet/04-outils && python scripts/backup-data.py
```

### Windows (Task Scheduler)

1. Ouvrir le Planificateur de tâches
2. Créer une tâche de base
3. Déclencheur : Quotidien / Hebdomadaire
4. Action : Démarrer un programme
   - Programme : `python.exe`
   - Arguments : `C:\chemin\vers\generateur-rapport.py`
   - Démarrer dans : `C:\chemin\vers\04-outils`

##  Envoi automatique par email

### Avec Python (exemple)

```python
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication

def send_report(recipient):
    sender = "smsi@entreprise.com"
    subject = f"Rapport SMSI - {date.today()}"
    
    # Créer le message
    msg = MIMEMultipart()
    msg['From'] = sender
    msg['To'] = recipient
    msg['Subject'] = subject
    
    # Corps du message
    body = "Veuillez trouver ci-joint le rapport SMSI hebdomadaire."
    msg.attach(MIMEText(body, 'plain'))
    
    # Pièce jointe
    with open('rapport-smsi.html', 'rb') as f:
        attach = MIMEApplication(f.read(), _subtype="html")
        attach.add_header('Content-Disposition', 'attachment', 
                         filename='rapport-smsi.html')
        msg.attach(attach)
    
    # Envoyer
    server = smtplib.SMTP('smtp.entreprise.com', 587)
    server.starttls()
    server.login(sender, 'password')
    server.send_message(msg)
    server.quit()
    
    print(f"Rapport envoyé à {recipient}")
```

## 🔗 Intégration avec d'autres outils

### Slack

```python
import requests

def send_to_slack(webhook_url, message):
    payload = {
        "text": message,
        "username": "SMSI Bot",
        "icon_emoji": ":lock:"
    }
    requests.post(webhook_url, json=payload)

# Exemple
send_to_slack(
    "https://hooks.slack.com/services/YOUR/WEBHOOK/URL",
    " Nouveau rapport SMSI disponible !"
)
```

### Microsoft Teams

```python
import pymsteams

def send_to_teams(webhook_url, title, message):
    teams_message = pymsteams.connectorcard(webhook_url)
    teams_message.title(title)
    teams_message.text(message)
    teams_message.send()
```

### Jira (Création automatique de tickets)

```python
from jira import JIRA

def create_jira_issue(summary, description):
    jira = JIRA(
        server='https://votre-domaine.atlassian.net',
        basic_auth=('email', 'api_token')
    )
    
    issue = jira.create_issue(
        project='SEC',
        summary=summary,
        description=description,
        issuetype={'name': 'Task'}
    )
    
    return issue.key
```

##  Exemples de KPI automatisés

### Script de calcul de KPI

```python
def calculate_kpis(actifs, incidents, audit):
    kpis = {
        'taux_conformite': (audit['conformes'] / audit['total']) * 100,
        'actifs_critiques': sum(1 for a in actifs if a['valeur'] == 5),
        'incidents_critiques': sum(1 for i in incidents if i['criticite'] == 'Critique'),
        'temps_resolution_moyen': sum(i['duree'] for i in incidents) / len(incidents),
        'cout_total_incidents': sum(i['cout'] for i in incidents)
    }
    return kpis

# Utilisation
kpis = calculate_kpis(actifs, incidents, audit)
print(f"Taux de conformité : {kpis['taux_conformite']:.1f}%")
print(f"Coût incidents : {kpis['cout_total_incidents']:,.0f} €")
```

##  Tableaux de bord avancés

### Option 1 : Power BI

1. Exporter les CSV
2. Importer dans Power BI Desktop
3. Créer des visuels personnalisés
4. Publier sur Power BI Service

### Option 2 : Grafana

```bash
# Installation Docker
docker run -d -p 3000:3000 grafana/grafana

# Configuration
# 1. Ajouter source de données (CSV via plugin)
# 2. Créer des dashboards
# 3. Configurer des alertes
```

### Option 3 : Tableau

1. Connecter aux fichiers CSV
2. Créer des feuilles de calcul
3. Assembler en tableau de bord
4. Publier sur Tableau Server/Online

##  Sécurité des scripts

### Bonnes pratiques

 **Ne jamais :**
- Stocker des mots de passe en clair dans le code
- Commiter des credentials sur GitHub
- Exécuter avec des droits admin inutilement

 **Toujours :**
- Utiliser des variables d'environnement
- Stocker les secrets dans un vault
- Valider les entrées utilisateur
- Logger les actions sensibles

### Exemple avec variables d'environnement

```python
import os
from dotenv import load_dotenv

# Charger le fichier .env
load_dotenv()

# Utiliser les variables
smtp_password = os.getenv('SMTP_PASSWORD')
api_key = os.getenv('API_KEY')
```

**Fichier .env** (jamais commité) :
```
SMTP_PASSWORD=votre_mot_de_passe
API_KEY=votre_cle_api
```

##  Ressources

### Librairies Python utiles

- **Pandas** : Manipulation de données
- **Matplotlib / Plotly** : Graphiques
- **Jinja2** : Templates HTML
- **WeasyPrint** : Génération PDF
- **Requests** : API HTTP
- **python-jira** : Intégration Jira
- **pymsteams** : Intégration Teams

### Documentation

- [Pandas Documentation](https://pandas.pydata.org/docs/)
- [Plotly Python](https://plotly.com/python/)
- [Jinja2 Template Designer](https://jinja.palletsprojects.com/)

##  Configuration avancée

### Fichier de configuration (config.json)

```json
{
  "paths": {
    "actifs": "../03-documentation/registres/registre-actifs.csv",
    "incidents": "../03-documentation/registres/registre-incidents.csv",
    "audit": "../01-audit/resultats-audit.json"
  },
  "smtp": {
    "server": "smtp.entreprise.com",
    "port": 587,
    "from": "smsi@entreprise.com"
  },
  "reporting": {
    "frequency": "weekly",
    "recipients": ["direction@entreprise.com", "rssi@entreprise.com"]
  }
}
```

### Charger la configuration

```python
import json

with open('config.json', 'r') as f:
    config = json.load(f)

actifs_path = config['paths']['actifs']
smtp_server = config['smtp']['server']
```

##  Dépannage

### Erreur : Module non trouvé

```bash
# Vérifier les modules installés
pip list

# Réinstaller les dépendances
pip install -r requirements.txt --upgrade
```

### Erreur : Fichier CSV introuvable

```bash
# Vérifier le chemin
python
>>> import os
>>> os.path.exists('../03-documentation/registres/registre-actifs.csv')
True  # Si False, le chemin est incorrect
```

### Erreur : Permission refusée

Sur Linux/Mac :
```bash
chmod +x generateur-rapport.py
```

##  Contribution

Vous avez développé un script utile ? Partagez-le !

1. Ajoutez-le dans `scripts/`
2. Documentez son usage dans ce README
3. Ajoutez un exemple
4. Créez une Pull Request

---

**Prochaine étape :** Consulter les références et guides → [Module Références](../05-references/)