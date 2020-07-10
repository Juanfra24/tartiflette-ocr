# tartiflette-ocr
Tartiflette-ocr  backend server simple image scan request

Basado en el código de ejemplo de [tartiflette](https://tartiflette.io/docs/tutorial/getting-started)
&
Basado en el modelo OCR de [Kurapan](https://github.com/kurapan/CRNN)  

## Requerimientos

  tartiflette-aiohttp = "*"  
  opencv-python = "*"  
  numpy = "*"  
  tqdm = "==4.35.0"  
  keras = "==2.2.5"  
  tensorflow = "==1.14"  
  tensorflow-gpu = "==1.14"  

Se utilizaron bibliotecas de Tensorflow 1.X por que el codigo fue escrito en estas, lo que implicaba que para utilizar una version 2.x se deberia portear este.
## Run

Usar para descargar y construir la imagen `docker build --tag recipes_manager:1.1 .`  
&  
`docker run -p 8080:8080 recipes_manager:1.1` para correr un contenedor en el puerto expuesto 8080.

* La imagen puede llegar a pesar 20GB*

## Query
<a href="https://ibb.co/CWG8G1C"><img src="https://i.ibb.co/R7wbwvr/query-result.png" alt="query-result" border="0"></a>

La siguiente query  
```
{
  ocr {
    result
  }
}

```
Debería obtener como resultado el escaneo de una imagen de prueba testeada anteriormente y que se encuentra en el interior del codigo y que es la siguiente  
<a href="https://imgbb.com/"><img src="https://i.ibb.co/fGkR36v/ex5.png" alt="ex5" border="0"></a>

Pero bien algun error en la incorporacion del OCR que implica el reconocimiento de la gpu previene que se entregue el resultado   

