# Se não tiver o yarn instalado e caso queira usar ele.
$ npm install --global yarn

# Iniciando o projeto
$ yarn init -y

# Instalando dependências iniciais
$ yarn add typescript ts-node-dev @types/node tsconfig-paths -D

# Criando o tsconfig.json que conterá as configurações do Typescript
npx tsc --init --rootDir src --outDir build --esModuleInterop --resolveJsonModule --lib es6 --module commonjs --allowJs true --noImplicitAny true

# Compilando o código
npx tsc

# Adicionando script no package.json a configuração para rodar o projeto
"scripts": {
  "dev": "ts-node-dev --inspect --transpile-only --ignore-watch node_modules src/server.ts"
}


# Instalando eslint
yarn add -D eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin