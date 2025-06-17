# Apache Parquet : Format de Stockage Colonnaire Haute Performance pour l'Analyse Big Data

Apache Parquet est un format de stockage colonnaire open-source conçu pour optimiser les performances d'analyse et réduire les coûts de stockage dans l'écosystème Big Data.

## 📌 Objectifs

La présentation vise à éclairer les points suivants concernant Apache Parquet :

**Optimiser les performances d'analyse BI** : Apache Parquet améliore drastiquement les performances des tableaux de bord et rapports Business Intelligence grâce à son format colonnaire qui permet de lire uniquement les colonnes nécessaires pour les KPI, réduisant ainsi les temps de génération des rapports.

**Réduire les coûts de stockage des données d'entreprise** : Grâce à ses algorithmes de compression avancés, Parquet peut réduire la taille des fichiers de données métier de 75% ou plus par rapport aux formats traditionnels comme CSV ou Excel, optimisant ainsi les coûts de stockage des entrepôts de données.

**Faciliter l'intégration avec les outils BI** : Parquet est nativement supporté par la plupart des outils BI modernes (Power BI, Tableau, Qlik, etc.) et les plateformes d'analyse (Pandas, R), permettant une intégration transparente dans les pipelines de reporting existants.

**Présenter l'architecture orientée BI** : Comprendre comment la structure colonnaire de Parquet optimise les requêtes d'agrégation typiques en BI (SUM, COUNT, AVG) et améliore les performances des filtres et des drill-down.

**Illustrer des cas d'utilisation BI concrets** : Démontrer comment Apache Parquet peut être appliqué pour l'analyse de données de taxis dans un contexte BI, l'optimisation des rapports sur de gros volumes de données transactionnelles, et l'amélioration des performances des dashboards interactifs.

## 🛠️ Prérequis

### Techniques
- Python (connaissances intermédiaires)
- Pandas et PyArrow
- Jupyter Notebook
- Notions de formats de données
- Git pour la gestion de version

### Connaissances
- Notions de base en Business Intelligence et reporting
- Concepts fondamentaux des entrepôts de données (Data Warehouse)
- Compréhension des KPI et métriques métier

## 🚀 Instructions d'utilisation

### 1. Setup de l'environnement

**Option A : Environnement local (recommandé)**

```bash
# Cloner le repository
git clone https://github.com/hamzaaouni/BI_Presentations.git
cd Presentation_07_Apache Parquet/Demo

# Créer un environnement virtuel
python -m venv venv
source venv/bin/activate  # Linux/Mac
# ou
venv\Scripts\activate     # Windows

# Installer les dépendances
pip install pandas pyarrow jupyter matplotlib seaborn
```

**Option B : Google Colab**
- Ouvrir Google Colab
- Uploader le fichier Demo.ipynb
- Installer les dépendances dans la première cellule

### 2. Préparer les données

```python
# Vérifier la présence du dataset
import pandas as pd
import pyarrow.parquet as pq

# Charger le dataset taxi_data
df = pd.read_csv('taxi_data.csv')  # ou le format original
print(f"Dataset shape: {df.shape}")
print(df.head())
```

### 3. Conversion et analyse

```python
# Convertir en format Parquet
df.to_parquet('taxi_data.parquet', engine='pyarrow')

# Comparer les tailles de fichiers
import os
csv_size = os.path.getsize('taxi_data.csv')
parquet_size = os.path.getsize('taxi_data.parquet')
compression_ratio = (csv_size - parquet_size) / csv_size * 100

print(f"Taille CSV: {csv_size/1024/1024:.2f} MB")
print(f"Taille Parquet: {parquet_size/1024/1024:.2f} MB")
print(f"Compression: {compression_ratio:.1f}%")
```

### 4. Exécuter la démonstration

```bash
# Lancer Jupyter Notebook
jupyter notebook Demo.ipynb
```

### 5. Résultats attendus

- Réduction significative de la taille des fichiers (60-80% typiquement)
- Amélioration des performances de lecture pour les requêtes analytiques
- Démonstration des capacités de filtrage et d'agrégation optimisées

## 📊 Contenu

- **Demo.ipynb** : Notebook Jupyter complet avec toutes les démonstrations pratiques
- **taxi_data** : Dataset utilisé pour illustrer les avantages de Parquet
- **Slides** : Présentation théorique expliquant les concepts et l'architecture
- **Scripts** : Utilitaires pour la conversion et l'analyse comparative

## 🔗 Ressources complémentaires

- 📹 [Documentation Apache Parquet](https://parquet.apache.org/docs/)
- 📚 [Guide PyArrow](https://arrow.apache.org/docs/python/)
- 🎓 [Tutoriels Pandas avec Parquet](https://pandas.pydata.org/docs/user_guide/io.html#parquet)
- 🛠️ [Apache Arrow](https://arrow.apache.org/)

## 📈 Métriques de Performance BI

Le projet démontre les améliorations suivantes pour les use cases Business Intelligence :

- **Compression des données métier** : Réduction de 60-80% de la taille des fichiers de données transactionnelles
- **Performance des rapports** : Accélération de 3-10x pour la génération de tableaux de bord
- **Requêtes sur colonnes spécifiques** : Lecture jusqu'à 100x plus rapide pour les KPI calculés sur quelques métriques
- **Filtres et drill-down** : Optimisation des filtres temporels et géographiques pour l'analyse interactive

## 🔧 Cas d'usage BI démontrés

1. **Rapports de performance temporelle** : Génération rapide de rapports sur les données de trajets par période (journalier, mensuel, trimestriel)
2. **Tableaux de bord géographiques** : Analyse des KPI de déplacement par zone géographique avec drill-down optimisé
3. **Optimisation des requêtes BI** : Comparaison des temps de génération de rapports CSV vs Parquet
4. **Intégration avec les outils BI** : Connexion directe avec Power BI, Tableau, et outils de reporting

## 👥 Auteur(s)

**Nom** : Anas Roukhmi & Abdlkrim Rekbi  
**Promotion** : Master Big Data & IA – 2024/2025  
**Contact** : [roukhmi02@gmail.com]

---

*Ce projet fait partie du cursus Master Big Data & IA et vise à démontrer l'importance des formats de stockage optimisés dans les architectures Big Data modernes.*