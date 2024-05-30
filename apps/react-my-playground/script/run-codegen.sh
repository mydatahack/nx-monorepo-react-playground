# echo "🔑 API Authenticaton ..."
# echo "Please provide your accessToken from generateShopToken mutation."
# read -p "Shop Token: " accessToken
# export API_TOKEN=$accessToken

echo ""
echo ""
echo "🛠️  Generating typings from graphql-codegen ..."

yarn graphql-codegen --config ./apps/react-my-playground/codegen.ts

echo ""
echo ""
echo "🌟 Formatting generated types ..."

yarn eslint \
  --fix \
 'apps/react-my-playground/src/**/*.generated.ts'

yarn prettier \
  --write \
  --log-level silent \
  'apps/react-my-playground/src/**/*.generated.ts' \
  'apps/react-my-playground/src/types/gql-global-types.ts'

echo ""
echo ""
echo "✅ All done!"