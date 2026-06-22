#!/bin/bash
set -e

echo "📦 Instalando dependencias Ruby..."
cd /workspace
bundle install

echo "🧶 Instalando dependencias Node..."
yarn install

echo "🗃️ Preparando base de datos..."
bundle exec rails db:prepare

echo "✅ Setup completo. Iniciando Chatwoot..."
# Arranca Rails + Vite en paralelo
bundle exec foreman start -f Procfile.dev