.PHONY: main tpm thesis build_docker_tpm run_docker_tpm build_docker_thesis run_docker_thesis

main:
	@echo "Specify a flavour (tpm/thesis)"

tpm: build_docker_tpm run_docker_tpm

thesis: build_docker_thesis run_docker_thesis

build_docker_tpm:
	docker build . --tag tectonic-docker-build --build-arg FLAVOUR=preparatory_work

run_docker_tpm:
	docker run -v ./preparatory_work:/usr/src/tex/ tectonic-docker-build tectonic /usr/src/tex/tpm.tex

build_docker_thesis:
	docker build . --tag tectonic-docker-build --build-arg FLAVOUR=thesis

run_docker_thesis:
	docker run -v ./thesis:/usr/src/tex/ tectonic-docker-build tectonic /usr/src/tex/thesis.tex
