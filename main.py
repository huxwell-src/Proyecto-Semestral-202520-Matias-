import cx_Oracle
import matplotlib.pyplot as plt
import numpy as np

usuario = "tarea"
password = "tarea"
dsn = "localhost:1521/XEPDB1"

try:
    conn = cx_Oracle.connect(usuario, password, dsn)
    cur = conn.cursor()

    # Preparar cursor de salida
    out_cursor = cur.var(cx_Oracle.CURSOR)

    # Llamar al SP
    cur.callproc("sp_promedio_estudiantes", [out_cursor])

    # Obtener resultados
    rows = out_cursor.getvalue().fetchall()
    if not rows:
        print("No hay datos disponibles.")
    else:
        nombres = [r[1] for r in rows]
        promedios = [r[2] for r in rows]

        # ------------------ Gráfico tonos celestes ------------------
        plt.figure(figsize=(14, 7))
        bars = plt.bar(nombres, promedios, color='#87CEEB')  # celeste

        # Etiquetas encima de cada barra
        for bar, valor in zip(bars, promedios):
            plt.text(bar.get_x() + bar.get_width()/2, valor + 0.03, f"{valor:.2f}", 
                     ha='center', va='bottom', fontsize=9)

        plt.xticks(rotation=45, ha='right', fontsize=10)
        plt.yticks(np.arange(1, 7.1, 0.5), fontsize=10)  # saltos de 0.5
        plt.ylabel("Promedio de calificación", fontsize=12)
        plt.xlabel("Estudiantes", fontsize=12)
        plt.title("Promedio de calificaciones por estudiante", fontsize=14, fontweight='bold')
        plt.ylim(0, 7)  # rango de calificaciones

        plt.grid(axis='y', linestyle='--', alpha=0.3)  # guía para lectura

        plt.tight_layout()
        plt.show()

except cx_Oracle.DatabaseError as e:
    print("Error de conexión:", e)
    
finally:
    try:
        cur.close()
        conn.close()
    except:
        pass