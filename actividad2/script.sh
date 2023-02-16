echo "Escriba el Nombre de Usuario de GitHub: "
read usuario
echo "Usuario:  ${usuario}"
curl --request GET https://api.github.com/users/${usuario} > resp.json
id=$(jq '.id' resp.json)
created_at=$(jq '.created_at' resp.json)
echo ""
fecha=$(date +"%F-%H-%M-%S")
mkdir /tmp/$fecha
echo > /tmp/$fecha/saludos.log
echo Hola ${usuario}. User ID: ${id}. Cuenta fue creada el: ${created_at}.>> /tmp/$fecha/saludos.log