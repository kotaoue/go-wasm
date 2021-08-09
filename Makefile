build: ## Build new app
	GOOS=js GOARCH=wasm go build -o main.wasm