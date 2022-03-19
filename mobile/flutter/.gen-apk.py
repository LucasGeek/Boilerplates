# PARA EXECUTAR ESSE ARQUIVO BASTA DIGITAR ESSE COMANDO NO TERMINAL => python3 _apk.py

import os
import shutil

import os.path 
from os import path

from datetime import datetime

############## MEXER ##############
# COLOQUE AQUI O NOME DO PROJETO PARA APARECER NA APK
nameFileApkProject = "app"
###################################

############## NAO MEXER ##############
dateNow = datetime.now()
nameFolderPath = "apks"
dateTimeNowFormatConfigure = dateNow.strftime("%d-%m-%Y-%H-%M-%S")
#######################################

def main():
    print("\n")
    print("LIMPANDO CACHES DO FLUTTER")
    print("\n")
    os.system("flutter clean")
    print("\n")
    print("CRIANDO O APK")
    print("\n")
    os.system("flutter build apk -t lib/main.dart --release --dart-define=ENVIRONMENT=DEVELOPMENT")
    print("\n")
    print(f"A PASTA '{nameFolderPath}' EXISTE NESSE DIRETORIO? " + str("SIM" if path.isdir(nameFolderPath) else "NAO"))
    print("\n")
    if not path.isdir(nameFolderPath):
        print("ENTÃO VAMOS CRIAR")
        try:
            os.mkdir(nameFolderPath)
        except OSError:
            print("OPS! A CRIAÇÃO DA PASTA %s FALHOU" % nameFolderPath)
        else:
            print("OBA! A CRIAÇÃO DA PASTA DEU BOM %s " % nameFolderPath)
            print("\n")
    print(f"MOVENDO E RENOMEANDO O ARQUIVO PARA A PASTA CORRETA ('{nameFolderPath}')")
    shutil.move("./build/app/outputs/flutter-apk/app-release.apk", f"./apks/{nameFileApkProject}-{dateTimeNowFormatConfigure}.apk")
    print("\n")
    print("LIMPANDO CACHES DO FLUTTER")
    print("\n")
    os.system("flutter clean")
    print("\n")
    print("BAIXANDO PACOTES DO PROJETO")
    print("\n")
    os.system("flutter pub get")
    print("\n")

if __name__== "__main__":
   main()