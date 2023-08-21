<h1>Uso de Git Hooks para proyectos Node.js con Husky</h1>





**Índice**
- [Descripción](#descripción)
- [Estado](#estado)
- [Stack Tecnológico](#stack-tecnológico)
  - [General](#general)
  - [Dependencias proyectos de arquitectura](#dependencias-proyectos-de-arquitectura)
  - [Dependencias de terceros](#dependencias-de-terceros)
- [Pre-Requisitos](#pre-requisitos)
- [Instalación](#instalación)
- [Configuración](#configuración)
  - [Implementar comandos de análisis de todos los ejemplos con lintado](#implementar-comandos-de-análisis-de-todos-los-ejemplos-con-lintado)
- [Uso](#uso)
- [Autor](#autor)





## Descripción

En este parte del repositorio se va a enseñar a utilizar la herramienta por línea de comando con diferentes escenarios explicados, de esta forma se verán todas las cosas que se pueden hacer


Este respositorio se compone de los siguientes directorios:

* **examples/**: Directorio que contiene los ficheros a analizar
* **config/**: Directorio que contiene toda la configuración del proyecto
  * **spectral/**: Directorio que contiene todo lo relacionado con la herramienta spectral
    * **rules/**: Subdirectorio que contiene los ficheros de reglas utilizados
* **src/**: Directorio que contiene código para una supuesta aplicación de calculadora
  * Nota: En este caso NO será necesario utilizar el código implementado para realizar un API, sino que servirá de ejemplo para usar fase de testing en posteriores ejemplos
* **tests/**: Directorio que contiene test unitarios / integración sobre código implementado en el directorio "src/"





## Estado

Este proyecto se encuentra finalizado





## Stack Tecnológico

### General

* [Node.js](https://nodejs.org/es) >18.x.x


### Dependencias proyectos de arquitectura

N/A


### Dependencias de terceros

**Desarrollo**

* **@stoplight/spectral-core** : Framework de Spectral
  * [npm](https://www.npmjs.com/package/@stoplight/spectral-core)
  * [Repositorio Git](https://github.com/stoplightio/spectral)
  * [Documentacion](https://stoplight.io/open-source/spectral)
* **husky** : Integración con Git Hooks
  * [npm](https://www.npmjs.com/package/husky)
  * [Repositorio Git](https://github.com/typicode/husky)
  * [Documentacion](https://typicode.github.io/husky/)

**Testing**

* **jest** : Framework de Testing
  * [npm](https://www.npmjs.com/package/jest)
  * [Repositorio Git](https://github.com/jestjs/jest)
  * [Documentacion](https://jestjs.io/)





## Pre-Requisitos

* Requerido tener instalado Node.js >18.x.x





## Instalación

Pasos a seguir:

1. Clonar el repositorio
2. Arrancar un terminal
3. Localizar el PATH el directorio del proyecto
4. Ejecutar el siguiente comando

```bash
npm install
```







## Configuración



### Implementar comandos de análisis de todos los ejemplos con lintado

Pasos a seguir:

1. Crear un script en el fichero **package.json**

```bash
"scripts": {
    ...
    "spectral:oas:lint:one": "spectral lint ./examples/example1.yaml",
    "spectral:oas:lint": "spectral lint ./examples/*",
    "spectral:oas:lint-warning-as-errors": "spectral lint -F warn ./examples/*"
    ...
  },
```








## Uso

>**Nota:**
>
>Todos los ejemplos harán uso de la configuración de spectral de **.spectral.yml**

El ejemplo que se utilizará será explicado en su artículo


## Autor

* **Víctor Madrid**