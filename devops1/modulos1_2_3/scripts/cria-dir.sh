#! /bin/bash

echo "Informe o nome do diretório"
read nome_diretorio
if [ "$nome_diretorio" == "" ]; then
	echo "O nome do diretório deve ser fornecido"
	echo "Encerrando Script"
	exit 1
fi

caminho_diretorio="" 

echo "Informe o caminho no qual deseja criar o diretório(Deixe em branco para criar na pasta atual)"
read resposta_caminho_diretorio
if [ "$resposta_caminho_diretorio" != "" ]; then

	if [ ! -e "$resposta_caminho_diretorio" ]; then

		read confirma_criacao -p "O caminho indicado parece não existir, deseja criá-lo([S]im/[N]ão)?" -n 1
		case "$confirma_criacao" in
			s|S ) 
				mkdir -p "$resposta_caminho_diretorio"
				;;
			n|N ) 
				echo "Encerrando script" 
				exit 1 
				;;
			* )
				echo "Resposta Inválida!"
				echo "Encerrando script"
				exit 1
				;;
		esac	
	fi

	caminho_diretorio="$resposta_caminho_diretorio"
fi

mkdir "$caminho_diretorio/$nome_diretorio" && echo "Diretorio '$nome_diretorio' criado com sucesso em $(realpath "$caminho_diretorio")"
