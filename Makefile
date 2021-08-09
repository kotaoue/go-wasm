build: ## Build new app
	GOOS=js GOARCH=wasm go build -o main.wasm
server: ## Start http server
	goexec 'http.ListenAndServe(`:8080`, http.FileServer(http.Dir(`.`)))'