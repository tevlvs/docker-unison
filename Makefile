build:
	sed -e "s/\$${UNISON_VERSION}/2.51.2/"   -e "s/\$${OCAML_VERSION}/4.06/" Dockerfile > Dockerfile-unison2.51.1-ocaml4.06
	sed -e "s/\$${UNISON_VERSION}/2.48.3/"   -e "s/\$${OCAML_VERSION}/4.02/" Dockerfile > Dockerfile-unison2.48.3-ocaml4.02
	sed -e "s/\$${UNISON_VERSION}/2.48.3/"   -e "s/\$${OCAML_VERSION}/4.01/" Dockerfile > Dockerfile-unison2.48.3-ocaml4.01
	sed -e "s/\$${UNISON_VERSION}/2.40.102/" -e "s/\$${OCAML_VERSION}/4.02/" Dockerfile > Dockerfile-unison2.40.102-ocaml4.02
	sed -e "s/\$${UNISON_VERSION}/2.40.102/" -e "s/\$${OCAML_VERSION}/4.01/" Dockerfile > Dockerfile-unison2.40.102-ocaml4.01

