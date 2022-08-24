#/bin/bash
az webapp up --sku b1 --name cicd-demo9999 --resource-group Azuredevops --location eastus
locust --headless --users 2 --spawn-rate 1 -H https://cicd-demo9999.azurewebsites.net/
