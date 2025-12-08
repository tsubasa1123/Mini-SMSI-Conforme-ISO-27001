#!/usr/bin/env python3
"""
Générateur de Rapports SMSI ISO 27001
Génère des rapports PDF/HTML à partir des registres CSV
"""

import csv
import json
from datetime import datetime
from collections import Counter
import os

def load_csv(filepath):
    """Charge un fichier CSV et retourne une liste de dictionnaires"""
    try:
        # utf-8-sig gère automatiquement le BOM Excel
        with open(filepath, 'r', encoding='utf-8-sig') as f:
            reader = csv.DictReader(f)
            return list(reader)
    except FileNotFoundError:
        print(f"❌ Fichier non trouvé: {filepath}")
        return []
    except Exception as e:
        print(f"❌ Erreur lecture fichier: {e}")
        return []

def analyze_assets(assets):
    """Analyse le registre des actifs"""
    if not assets:
        return None
    
    total = len(assets)
    by_type = Counter(a.get('Type', 'Non défini') for a in assets)
    by_classification = Counter(a.get('Classification', 'Non défini') for a in assets)
    critical = sum(1 for a in assets if a.get('Valeur (1-5)') == '5')
    
    return {
        'total': total,
        'by_type': dict(by_type),
        'by_classification': dict(by_classification),
        'critical_count': critical,
        'critical_percent': round(critical/total*100, 1) if total > 0 else 0
    }

def analyze_incidents(incidents):
    """Analyse le registre des incidents"""
    if not incidents:
        return None
    
    total = len(incidents)
    by_criticality = Counter(i.get('Criticité', 'Non défini') for i in incidents)
    by_type = Counter(i.get('Type incident', 'Non défini') for i in incidents)
    by_status = Counter(i.get('Statut', 'Non défini') for i in incidents)
    
    # Calcul des coûts
    costs = []
    for inc in incidents:
        cost_str = inc.get('Coût estimé', '0 €').replace(' €', '').replace(' ', '').replace(',', '')
        try:
            costs.append(int(cost_str))
        except:
            costs.append(0)
    
    total_cost = sum(costs)
    avg_cost = total_cost // total if total > 0 else 0
    
    return {
        'total': total,
        'by_criticality': dict(by_criticality),
        'by_type': dict(by_type),
        'by_status': dict(by_status),
        'total_cost': total_cost,
        'avg_cost': avg_cost
    }

def generate_html_report(assets_stats, incidents_stats, output_file='rapport-smsi.html'):
    """Génère un rapport HTML"""
    
    html = f"""<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rapport SMSI - {datetime.now().strftime('%d/%m/%Y')}</title>
    <style>
        body {{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background: #f5f5f5;
        }}
        .header {{
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            margin-bottom: 30px;
        }}
        .section {{
            background: white;
            padding: 30px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }}
        .stat-grid {{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin: 20px 0;
        }}
        .stat-card {{
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }}
        .stat-number {{
            font-size: 3em;
            font-weight: bold;
        }}
        .stat-label {{
            opacity: 0.9;
            margin-top: 10px;
        }}
        table {{
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }}
        th, td {{
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }}
        th {{
            background: #667eea;
            color: white;
        }}
        tr:hover {{
            background: #f5f5f5;
        }}
        .critical {{ color: #dc3545; font-weight: bold; }}
        .high {{ color: #fd7e14; font-weight: bold; }}
        .medium {{ color: #ffc107; font-weight: bold; }}
        .low {{ color: #28a745; font-weight: bold; }}
        h2 {{ color: #667eea; }}
        h3 {{ color: #764ba2; margin-top: 20px; }}
    </style>
</head>
<body>
    <div class="header">
        <h1>Rapport SMSI ISO 27001</h1>
        <p>Généré le {datetime.now().strftime('%d/%m/%Y à %H:%M')}</p>
    </div>
"""

    # Section Actifs
    if assets_stats:
        html += f"""
    <div class="section">
        <h2>Gestion des Actifs</h2>
        <div class="stat-grid">
            <div class="stat-card">
                <div class="stat-number">{assets_stats['total']}</div>
                <div class="stat-label">Actifs inventoriés</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">{assets_stats['critical_count']}</div>
                <div class="stat-label">Actifs critiques</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">{assets_stats['critical_percent']}%</div>
                <div class="stat-label">Taux de criticité</div>
            </div>
        </div>
        
        <h3>Répartition par type</h3>
        <table>
            <tr><th>Type</th><th>Nombre</th></tr>
"""
        for type_name, count in assets_stats['by_type'].items():
            html += f"            <tr><td>{type_name}</td><td>{count}</td></tr>\n"
        
        html += """        </table>
        
        <h3>Répartition par classification</h3>
        <table>
            <tr><th>Classification</th><th>Nombre</th></tr>
"""
        for classif, count in assets_stats['by_classification'].items():
            html += f"            <tr><td>{classif}</td><td>{count}</td></tr>\n"
        
        html += "        </table>\n    </div>\n"

    # Section Incidents
    if incidents_stats:
        html += f"""
    <div class="section">
        <h2>⚠️ Incidents de Sécurité</h2>
        <div class="stat-grid">
            <div class="stat-card">
                <div class="stat-number">{incidents_stats['total']}</div>
                <div class="stat-label">Incidents déclarés</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">{incidents_stats['total_cost']:,} €</div>
                <div class="stat-label">Coût total</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">{incidents_stats['avg_cost']:,} €</div>
                <div class="stat-label">Coût moyen</div>
            </div>
        </div>
        
        <h3>Répartition par criticité</h3>
        <table>
            <tr><th>Criticité</th><th>Nombre</th></tr>
"""
        for crit, count in incidents_stats['by_criticality'].items():
            css_class = crit.lower().replace('é', 'e').replace('è', 'e').replace(' ', '-')
            html += f'            <tr><td class="{css_class}">{crit}</td><td>{count}</td></tr>\n'
        
        html += """        </table>
        
        <h3>Répartition par type</h3>
        <table>
            <tr><th>Type</th><th>Nombre</th></tr>
"""
        for type_inc, count in incidents_stats['by_type'].items():
            html += f"            <tr><td>{type_inc}</td><td>{count}</td></tr>\n"
        
        html += "        </table>\n    </div>\n"

    # Recommandations
    html += """
    <div class="section">
        <h2>Recommandations</h2>
        <ul>
            <li><strong>Actifs critiques :</strong> Vérifier que tous les actifs critiques disposent de sauvegardes testées</li>
            <li><strong>Incidents :</strong> Analyser les causes racines et mettre en place des actions correctives</li>
            <li><strong>Formation :</strong> Sensibiliser les utilisateurs aux incidents les plus fréquents</li>
            <li><strong>Revue :</strong> Planifier une revue trimestrielle des risques et incidents</li>
            <li><strong>Documentation :</strong> Maintenir à jour les registres et la documentation du SMSI</li>
        </ul>
    </div>
    
    <div class="section" style="text-align: center; color: #666;">
        <p>Rapport généré automatiquement par Mini-SMSI ISO 27001</p>
        <p><a href="https://github.com/tsubasa1123/Mini-SMSI-Conforme-ISO-27001">GitHub Project</a></p>
    </div>
</body>
</html>
"""
    
    # Écriture du fichier
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(html)
    
    print(f"Rapport HTML généré: {output_file}")
    return output_file

def main():
    """Fonction principale"""
    print("Génération du rapport SMSI ISO 27001\n")
    
    # Chemins des fichiers (relatifs au dossier 04-outils)
    actifs_file = os.path.join('..', '03-documentation', 'registres', 'registre-actifs.csv')
    incidents_file = os.path.join('..', '03-documentation', 'registres', 'registre-incidents.csv')
    
    # Chargement des données
    print("Chargement des données...")
    assets = load_csv(actifs_file)
    incidents = load_csv(incidents_file)
    
    # Analyse
    print("Analyse des données...")
    assets_stats = analyze_assets(assets)
    incidents_stats = analyze_incidents(incidents)
    
    if assets_stats:
        print(f"   ✓ {assets_stats['total']} actifs analysés")
    else:
        print("Aucun actif trouvé")
        
    if incidents_stats:
        print(f"✓ {incidents_stats['total']} incidents analysés")
    else:
        print("Aucun incident trouvé")
    
    # Génération rapport
    print("\nGénération du rapport...")
    output_file = generate_html_report(assets_stats, incidents_stats)
    
    print("\nTerminé !")
    print(f"\nConseil: Ouvrez '{output_file}' dans votre navigateur")
    print(f"   Chemin complet: {os.path.abspath(output_file)}")

if __name__ == "__main__":
    main()