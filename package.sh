#!/bin/bash

#
helm package charts/argocd-register-controller --dependency-update
helm package charts/argocd-pinniped-controller --dependency-update

#
helm repo index --url https://lknite.github.io .
