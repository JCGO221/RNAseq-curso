library("limma")
library("edgeR")
library("ggplot2")
library("here") #pone el posicionamiento de raíz de trabajo
setwd("C:/Users/ldg221/Documents/R/RNAseq curso") #cambia la raíz de trabajo
setwd("~/R/RNAseq curso") # así pones el directorio donde quieres trabajar
setwd(here::here("RNAseq curso")) #para no poner toda la dirección
getwd() #me dice la dirección donde trabajo
a <- 1
c <-23
save (a,c, file = here::here("datos prueba.RData")) #para guardar un conjunto de datos creado durante el trabajo, se pone nombre y Rdata de extensión
rm(a,c) #borrar el conjunto de datos creado
load(here::here("datos prueba.RData")) # carga de nuevo el conjunto de datos ya guardado y que había borrado

# creamos un directorio
dir.create(here::here("subdirectorio"), showWarnings = FALSE)
# podemos crear un archivo, indicando el subdirectorio, (en este caso el primer argumento)
file.create(here::here("subdirectorio", "nombrearchivo.R"))
# abrimos el nuevo archivo creado
file.show(here::here("subdirectorio", "nombrearchivo.R")) # podemos editarlo!!
# por ejemplo si quisieramos ver nuestros archivos del directorio
list.files(here::here(), recursive = TRUE)

usethis::use_r("notas-prueba.R") # no importando en qué path estemos, crea nuevo archivo en el directorio

install.packages(c("gitcreds", "gert", "gh"))
library("gitcreds")
library("gert")
library("gh")
# Para iniciar conexión con GitHub
usethis::create_github_token() # redirige a github donde eligiras nombre especifico del token
# copia el token para después ingresarlo con gitcreds_set()
gitcreds::gitcreds_set() # aquí colocas el token (NO tu contraseña de github!!!)
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
# Configurar usuario de gitHub
usethis::edit_git_config()
usethis::use_git()
1
