WORKPLACE="$HOME/workplace/Photos"
WORKSPACE="$WORKPLACE/PhotosApiTests"
SCHEMA_PATH="$WORKPLACE/PhotosApi/api/openapi.yaml"

(
  cd "$WORKSPACE"
  rm -rf openapi_client
  mkdir -p openapi_client

  cd openapi_client
  npx @openapitools/openapi-generator-cli generate -i "$SCHEMA_PATH" -g python --skip-validate-spec
  pip install .
)

rm -rf openapi_client
