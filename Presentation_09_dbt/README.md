**DBT (Data Build Tool)** est un outil open source qui permet de transformer les données directement dans votre entrepôt, en utilisant uniquement du SQL. Il est devenu un pilier incontournable de la Business Intelligence moderne grâce à son approche modulaire, collaborative et orientée DevOps.

---

### 📌 Objectifs

Cette présentation a pour but de clarifier les points suivants concernant DBT :

* **Comprendre le rôle de DBT dans un pipeline ELT** : DBT gère uniquement la transformation (le "T" de ELT), permettant d’écrire des modèles SQL propres et maintenables.
* **Favoriser la collaboration autour de la donnée** : Grâce à l’intégration avec Git, les équipes peuvent versionner, documenter et tester leurs transformations comme du code logiciel.
* **Simplifier le développement analytique** : DBT propose des outils puissants comme les *materializations*, *macros*, *tests* et *data lineage* pour structurer les projets data.
* **Comparer DBT Cloud vs DBT Core** : Découvrir les différences entre la version locale (open source) et la version SaaS hébergée.
* **Mettre en place un projet DBT de A à Z** : Installation, création de modèles, exécution, génération de documentation.

---

## 🛠️ Prérequis

### Techniques
- Python 3.8+
- pip
- Un entrepôt de données (ex : PostgreSQL, Snowflake, BigQuery...)
- Terminal / CLI

### Connaissances
- Maîtrise de SQL
- Notions de base en Business Intelligence
- Familiarité avec les environnements de développement collaboratifs (Git)

---

## 🚀 Instructions d'utilisation

### 1. Installation de l’environnement DBT

\\`\\`\\`bash
python -m venv dbt_env
source dbt_env/bin/activate  # Linux/Mac
.\\\\dbt_env\\\\Scripts\\\\activate   # Windows

pip install dbt-postgres    # ou dbt-snowflake, dbt-bigquery, etc.
\\`\\`\\`

### 2. Initialiser un projet DBT

\\`\\`\\`bash
dbt init mon_projet_dbt
cd mon_projet_dbt
\\`\\`\\`

### 3. Définir les modèles SQL
- Ajouter vos requêtes SQL dans le dossier `models/`
- Utiliser des Jinja templates pour les filtres dynamiques ou les macros

### 4. Exécuter les commandes principales

\\`\\`\\`bash
dbt run          # Exécute les transformations SQL
dbt test         # Lance les tests de qualité de données
dbt docs generate && dbt docs serve  # Génère et affiche la doc interactive
\\`\\`\\`

---

## 🧩 Fonctionnalités Clés

- **Modèles SQL modulaires**  
- **Tests automatiques de données** (`not_null`, `unique`, `accepted_values`, etc.)  
- **Macros & Jinja templating**  
- **Materializations** : `view`, `table`, `incremental`, `ephemeral`  
- **DAG et Data Lineage visuel**  
- **Documentation intégrée et interactive**  
- **Support Git & CI/CD**  

---

## 🌐 Versions DBT

| Version     | Description                                      |
|-------------|--------------------------------------------------|
| DBT Core    | Version open source, en ligne de commande (CLI) |
| DBT Cloud   | Version SaaS avec IDE, orchestration et logging |

---

## 🧪 Exemple de Modèle SQL

\\`\\`\\`sql
-- models/fact_sales.sql
SELECT
    customer_id,
    SUM(sales) AS total_sales,
    COUNT(order_id) AS orders
FROM {{ ref('stg_orders') }}
GROUP BY customer_id
\\`\\`\\`

---

## 📊 Contenu

- **Slides** : Présentation complète sur l’utilisation et les concepts de DBT  
- **Code** : Modèles SQL avec Jinja, tests et configuration dbt_project.yml  
- **Exemples** : Données factices pour démo  
- **Documentation générée** : `target/index.html` via `dbt docs generate`

---

## 🔗 Ressources complémentaires

- 📘 [Documentation officielle](https://docs.getdbt.com/)
- 🐙 [GitHub - dbt-core](https://github.com/dbt-labs/dbt-core)
- 📦 [dbt packages](https://hub.getdbt.com/)
- 🎓 [Tutoriel Officiel DBT Learn](https://learn.getdbt.com/)

---

## 👥 Auteur(s)

- **Nom** : Oumanou Mohamed & Asmaoui Larbi  
- **Encadrant** : Pr. Najdi Lotfi  
- **Promotion** : Master Big Data & IA – 2024/2026  
"""

