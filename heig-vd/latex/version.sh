#!/usr/bin/env bash
set -e

# Récupérer le tag ou hash
TAG=$(git describe --tags --dirty --always)

# Date du commit (format LaTeX YYYY/MM/DD)
DATE=$(git show -s --format=%cs HEAD | tr '-' '/')

# Écrit version.tex (dans le dossier racine du projet)
cat > version.tex <<EOF
% Fichier généré automatiquement par CI
\def\HeigGitTag{$TAG}
\def\HeigGitDate{$DATE}
EOF

echo "✅ version.tex generated : $TAG ($DATE)"
