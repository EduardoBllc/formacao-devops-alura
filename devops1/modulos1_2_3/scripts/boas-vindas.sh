mensagem="Bem vindo(a)"

if [ "$#" -gt 0 ]; then
	mensagem="$mensagem $1!"
else
	mensagem="$mensagem $(whoami)!"
fi

echo "$mensagem"
