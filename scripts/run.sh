metadata_store=''
artifact_store=''

print_usage() {
  printf "Usage: run.sh [options]\n"
    printf "Options:\n"
    printf "  -h, --help\t\t\tPrints this help message\n"
    printf "  -m, --metadata-store <path>\tPath to the metadata store\n"
    printf "  -a, --artifact-store <path>\tPath to the artifact store\n"
}

while getopts 'm:a:' arg; do
  case "${arg}" in
    m) metadata_store="${OPTARG}" ;;
    a) artifact_store="${OPTARG}" ;;
    h) print_usage ;;
    *) print_usage
       exit 1 ;;
  esac
done

if [${artifact_store} == '']; then
  printf "Artifact store URL must be set"
  exit 1
fi

if [${metadata_store} == '']; then
  mlflow server \
  --default-artifact-root "${artifact_store}" \
  --host 0.0.0.0 \
  --port 5000
  exit 0
fi

mlflow server  \
--backend-store-uri "${metadata_store}" \
--default-artifact-root "${artifact_store}" \
--host 0.0.0.0 \
--port 5000
