# Analyse de la relation entre R&D Spend et Profit avec Power BI & Python

Ce projet montre comment intégrer Python dans Power BI pour effectuer une **analyse de régression linéaire** basée sur un fichier CSV contenant les données de startups.

---

## 📥 Pré-requis

- [Télécharger Power BI](https://powerbi.microsoft.com/)
- [Télécharger Anaconda](https://www.anaconda.com/products/distribution) (ou simplement Python 3.8)

---

## 🛠️ Création de l'environnement Python avec Anaconda

```bash
conda create -n PowerBi python=3.8
conda activate PowerBi


⚙️ Configuration de Python dans Power BI

    Ouvrir Power BI

    Aller dans Fichier → Options et paramètres → Options

    Section Scripts Python → cliquer sur Parcourir

    Sélectionner le dossier de l’environnement PowerBi (généralement dans anaconda3/envs/PowerBi/)

📂 Charger un fichier CSV dans Power BI

    Obtenir les données → choisir Text/CSV

    Cliquer sur Transformer les données

    Dans l’éditeur Power Query, cliquer sur Exécuter un script Python

    Utiliser ce script pour créer des visualisations :
Exemple 1 : Nuages de points

`import seaborn as sns
import matplotlib.pyplot as plt

sns.scatterplot(x='Administration', y='Profit', data=dataset)
sns.scatterplot(x='Marketing Spend', y='Profit', data=dataset)
sns.scatterplot(x='R&D Spend', y='Profit', data=dataset)
plt.show()`


Exemple 2 : Pairplot

`import seaborn as sns
import matplotlib.pyplot as plt

sns.pairplot(data=dataset)
plt.show()`

🔍 Script Python complet (analyse de régression linéaire)

📌 Remarque

Avant votre script, Power BI ajoute automatiquement :
`# dataset = pandas.DataFrame(Administration, Marketing Spend, Profit, R&D Spend, State)`
`# dataset = dataset.drop_duplicates()`

Script d'analyse

`import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import r2_score, mean_squared_error

# Chargement des données
dataset = pd.read_csv('50_startups.csv')

# Préparation
X = dataset[['R&D Spend']] 
y = dataset['Profit']

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

model = LinearRegression()
model.fit(X_train, y_train)

# Prédictions
y_test_pred = model.predict(X_test)

# Métriques
print("R² Score:", r2_score(y_test, y_test_pred))
print("MSE:", mean_squared_error(y_test, y_test_pred))

# Nouvelles prédictions
nouvelles_valeurs_rd = [20000, 35000, 50000, 75000, 90000, 105000, 125000, 140000, 155000, 175000]
nouvelles_donnees = pd.DataFrame({'R&D Spend': nouvelles_valeurs_rd})
predictions = model.predict(nouvelles_donnees)

# Affichage des résultats
resultats_predictions = pd.DataFrame({
    'R&D_Spend': nouvelles_valeurs_rd,
    'Profit_Predit': predictions
})
print(resultats_predictions)`



📊 Visualisations combinées

Le script contient 6 graphiques :

    Régression linéaire avec train/test

    Analyse des résidus

    Réel vs Prédit

    Distribution des résidus

    Données complètes avec prédictions

    Courbe d’évolution des prédictions

Pour plus de détails, consultez le fichier .py ou la cellule dans votre notebook Power BI.


📎 Résultat final

Une visualisation complète dans Power BI des prédictions de profit en fonction des dépenses R&D, avec toutes les métriques, graphiques et résidus pour évaluer la qualité du modèle.


✅ Technologies utilisées

    Power BI

    Python (via Anaconda)

    Pandas, Numpy

    Seaborn, Matplotlib

    Scikit-learn (régression linéaire)


📁 Fichier CSV

Assurez-vous d’utiliser le fichier 50_startups.csv






