library(rvest)
url <- "https://es.investing.com"

pagina_web<-read_html(url)
selector_tabla <-"#MM_table1"
nodo_tabla<-html_node(pagina_web,selector_tabla)
nodo_tabla_texto<-html_text(nodo_tabla)
nodo_tabla_texto<-html_table(nodo_tabla)
nodo_tabla_texto<-nodo_tabla_texto[-1]
nodo_tabla_texto<-nodo_tabla_texto[-5]
nodo_tabla_texto<-nodo_tabla_texto[-6]
nodo_tabla_texto<-nodo_tabla_texto[-5]
nodo_tabla_texto
str(nodo_tabla_texto)
#names(nodo_tabla_texto)
nodo_tabla_texto


