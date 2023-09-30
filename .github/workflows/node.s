name: Nasa Project CI
on:
  push:
    branches: [main]
  pull_request:
    branches: [main]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Use Node.js version 16
        uses: actions/setup-node@2
        with:
          node-version: "16"
      - run: npm install
      - run: npm run build --prefix client
