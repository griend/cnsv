
WEBSITE="griendbvzovfvl"

az storage blob upload-batch \
  --account-name ${WEBSITE} \
  --source ../site/ \
  --destination '$web' \
  --overwrite True
