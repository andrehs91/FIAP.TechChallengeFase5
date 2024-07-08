# FIAP - Tech Challenge (Fase 5)

Este repositório contêm o projeto desenvolvido para o Tech Challenge da quinta fase do curso **Arquitetura de Sistemas .NET com Azure**, desenvolvido pelo aluno **André Henrique dos Santos (RM351909)**.

A solução utilizada nesta fase está contida no repositório https://github.com/andrehs91/FIAP.TechChallengeFase4 e também está disponível no https://hub.docker.com:
**Aplicação:** ` docker pull andrehs/fiap.aplicacao:latest `
**Worker:** ` docker pull andrehs/fiap.worker:latest `

---

## Contexto

O objetivo deste projeto é executar uma aplicação complexa em um Cluster Kubernetes.

---

## Como Executar o Projeto
> :warning: **Importante:** Os passos a seguir consideram que o cluster já está devidamente instalado/configurado.

1. Configure o Ingress do cluster: ` kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.1/deploy/static/provider/cloud/deploy.yaml `[^1]
2. Configure um servidor de métricas para o Horizontal Pod Autoscaler: ` kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/high-availability-1.21+.yaml `[^2]
3. Defina as variáveis de ambiente e segredos: ` kubectl apply -f 01.environment.yaml `
4. Crie os volumes para persistência de dados: ` kubectl apply -f 02.volumes.yaml `
5. Configure os serviços utilizados pela solução: ` kubectl apply -f 03.solution.yaml `
6. Acompanhe a situação dos *pods*: ` kubectl get pods --namespace=fiap `
7. Quando todos estiverem em execução, acesse a interface [Swagger](http://localhost/swagger/index.html);

[^1]: Link do projeto: https://github.com/kubernetes/ingress-nginx
[^2]: Link do projeto: https://github.com/kubernetes-sigs/metrics-server
