# Package LaTeX pour les logos HEIG-VD

Ce package permet d'insérer les logos de la HEIG-VD dans des documents LaTeX.

Il supporte les millesimes de logo suivants: `1998`, `2004`, `2009`, `2020` (défaut).

Exemple d'option de package:

```latex
\usepackage[2004]{heiglogo}
```

Exemple au niveau d'un appel:

```latex
\logo[relative, year=1998, height=12mm]
```

On peut dimensionner par la hauteur (`height`) ou par la largeur (`width`). Sans
réglage, chaque millésime a une taille par défaut : `2004` fait 26 mm de haut,
`2009` fait 35 mm de large, et `1998`/`2020` font 18 mm de haut. Combiné au
positionnement absolu par défaut (1 cm du bord haut/gauche), `\usepackage[2004]{heiglogo}`
suivi de `\logo` place donc le logo 2004 à 1 cm du coin supérieur gauche, hauteur 26 mm.

Une démonstration complète est disponible dans `demo-years.tex`.

Le fichier `heiglogo.dtx` contient la documentation du package et le code source. Pour l'extraire, utilisez la commande suivante :

```bash
l3build unpack
```

## Build

Pour construire le package, utilisez les commandes suivantes :

```bash
l3build clean
l3build unpack
l3build doc
```
