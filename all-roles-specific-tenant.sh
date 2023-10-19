curl --request GET \
     --url 'https://<MORPHEUS-APPLIANCE-URL>/api/roles?max=25&offset=0&sort=name&direction=asc&roleType=account' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <API-TOKEN>' -k | jq -c '.[][] | select( .ownerId|IN(1) )' | jq '.'
