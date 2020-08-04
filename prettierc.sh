<<<<<<< HEAD
#!/bin/bash

touch .prettierrc.json
cat <<EOF >.prettierrc.json
=======
#!/bin/bash 

touch .prettierrc.json
cat << EOF > .prettierrc.json
>>>>>>> feat/automated
{
  "trailingComma": "es5",
  "tabWidth": 4,
  "semi": false,
  "singleQuote": true
}
EOF
