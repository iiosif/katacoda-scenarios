ssh root@host01 "curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash; git clone https://github.com/sgandon/katacoda-scenarios.git; mv katacoda-scenarios/kubernetes/assets/ .; rm -rf katacoda-scenarioskubectl; kubectl create -f rbac-config.yaml;"
