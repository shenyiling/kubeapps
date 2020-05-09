# local dev start script.
# mongodb server is from release of kubeapps chart, so you first need create a kubeapps release.
export DB_PASSWORD="wKn1j1GRXz"
export POD_NAMESPACE="default"
export PORT="8081" 
go run main.go handler.go mongodb_utils.go utils.go postgresql_utils.go -database-url "localhost:27017" -database-name "charts" -database-user "root" -database-type "mongodb"
