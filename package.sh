#!/bin/bash

#
mkdir -p charts/argocd-register-controller
cp -r ../daytwo/daytwo-argocd-register-controller/chart/* charts/argocd-register-controller
mkdir -p charts/argocd-pinniped-controller
cp -r ../daytwo/daytwo-argocd-pinniped-controller/chart/* charts/argocd-pinniped-controller
mkdir -p charts/argocd-sync-labels-controller
cp -r ../daytwo/argocd-sync-labels-controller/chart/* charts/argocd-sync-labels-controller

#
helm package charts/argocd-register-controller --dependency-update
helm package charts/argocd-pinniped-controller --dependency-update
helm package charts/argocd-sync-labels-controller --dependency-update

#
helm repo index --url https://lknite.github.io/charts .
