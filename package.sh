#!/bin/bash


#
rm -rf charts/argocd-register-controller
mkdir -p charts/argocd-register-controller
cp -r ../daytwo/argocd-register-controller/chart/* charts/argocd-register-controller

#
rm -rf charts/argocd-pinniped-controller
mkdir -p charts/argocd-pinniped-controller
cp -r ../daytwo/argocd-pinniped-controller/chart/* charts/argocd-pinniped-controller

#
rm -rf charts/argocd-labels-controller
mkdir -p charts/argocd-labels-controller
cp -r ../daytwo/argocd-labels-controller/chart/* charts/argocd-labels-controller

#
rm -rf charts/argocd-kasten-controller
mkdir -p charts/argocd-kasten-controller
cp -r ../daytwo/argocd-kasten-controller/chart/* charts/argocd-kasten-controller

#
rm -rf charts/daytwo
mkdir -p charts/daytwo
cp -r ../daytwo/chart/* charts/daytwo

#
helm package charts/argocd-register-controller --dependency-update
helm package charts/argocd-pinniped-controller --dependency-update
helm package charts/argocd-labels-controller --dependency-update
helm package charts/argocd-kasten-controller --dependency-update
helm package charts/daytwo --dependency-update

#
helm repo index --url https://lknite.github.io/charts .
