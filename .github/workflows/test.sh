GITHUB_ENV=/Users/chaseshak/Projects/actions-playground/test
secret_names=$(az keyvault secret list --vault-name chaseTestVault --query "[].{name:name}" --output tsv)
for secret_name in $secret_names; do
  secret_value=$(az keyvault secret show --vault-name chaseTestVault --name $secret_name --query value -o tsv)
  echo "::add-mask::$secret_value"
  echo "$secret_name=$secret_value" >> $GITHUB_ENV
done
