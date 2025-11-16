# Proyecto Semestral 202520
## TDFI103-Bases de Datos

## Archivos incluidos

### 1. `data.sql`
Contiene la estructura de la base de datos (tablas) y los datos de ejemplo utilizados en este proyecto.

### 2. `queries.sql`
Contiene todas las consultas SQL utilizadas:  
- Queries de análisis  
- Vistas  
- Procedimientos almacenados (SPs)

### 3. `main.py`
Script en Python que:  
- Conecta a la base de datos Oracle  
- Llama a los procedimientos almacenados (`SYS_REFCURSOR`)  
- Obtiene los datos de promedio por estudiante  
- Genera un gráfico de barras con los promedios

---

## :warning: Nota importante

Antes de ejecutar `main.py`, **asegúrate de cambiar las credenciales de conexión** por las correspondientes a tu base de datos local:

```python
usuario = "TU_USUARIO"
password = "TU_PASSWORD"
dsn = "TU_HOST:PUERTO/TU_SERVICIO"
````

---

## Uso

1. Cargar la base de datos ejecutando `data.sql` en tu Oracle local.
2. Ejecutar `queries.sql` para crear queries, vistas y procedimientos almacenados.
3. Ejecutar `main.py` para generar el gráfico de promedio de calificaciones por estudiante.

---

## Requisitos

* Python 3.x
* Librerías Python: `cx_Oracle`, `matplotlib`
* Base de datos Oracle (XE o estándar)
* SQL Developer o SQL*Plus para probar queries y procedimientos

---
## Descripción del gráfico

* Barras en **tonos celestes**
* Rango del eje Y: 1 a 7
* Saltos del eje Y: 0.5 (para diferenciar pequeños cambios como 6.9 a 7.0)
* Cada barra representa un estudiante, con etiqueta mostrando el promedio exacto
* Estilo sobrio y profesional, sin degradados ni efectos

### Ejemplo del gráfico

![Gráfico de promedio](https://raw.githubusercontent.com/huxwell-src/Proyecto-Semestral-202520-Matias-/refs/heads/main/Ejemplo.png)

## :bulb: Notas adicionales

* Este proyecto está diseñado para **demostraciones académicas** y análisis de calificaciones.
* Los datos de ejemplo se encuentran en `data.sql`, pero puedes reemplazarlos por tus propios datos para pruebas.
