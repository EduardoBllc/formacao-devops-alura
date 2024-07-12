#! /bin/bash

read -r -n 1 -p  "Qual operação deseja realizar no arquivo destino? [C]ompactar/[D]escompactar " operacao

echo

case "$operacao" in
    c|C)
        read -p  "Nome do arquivo final(.tar.gz): " arquivo_saida
        read -p "Insira os arquivos a compactar separados por espaço: " arquivos
        tar -czf "$arquivo_saida" $arquivos && echo "Arquivos compactados com sucesso em $arquivo_saida"
        ;;
    d|D)
        read -p "Nome do arquivo a descompactar(.tar.gz): " arquivo
        read -p "Diretório de destino: " diretorio
        tar -xzf "$arquivo" -C "$diretorio" && echo "Descompactado com sucesso em $diretorio"
        ;;
    *)
        echo "Operação inválida!"
        echo "Seleciona c/C para compactar ou d/D para descompactar"
        exit 1
        ;;
esac


