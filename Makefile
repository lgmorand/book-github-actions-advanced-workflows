test:
	@echo "➡️ Running Prettier"
	npx --yes prettier@2.8.8 --editorconfig --check .

	@echo "➡️ Running Hadolint"
	find . -name "Dockerfile*" -exec bash -c "echo 'File {}:' && hadolint {}" \;

	@echo "➡️ Running Azure Bicep Validate"
	az deployment sub validate \
		--location westeurope \
		--no-prompt \
		--parameters container/test/bicep/example.json \
		--template-file container/src/bicep/main.bicep \
		--verbose