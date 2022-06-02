main:
	@echo "Specify a flavour (tpm/thesis)"
tpm:
	@FLAVOUR=preparatory_work FILENAME=tpm.tex docker-compose up
thesis:
	@FLAVOUR=thesis FILENAME=thesis.tex docker-compose up
