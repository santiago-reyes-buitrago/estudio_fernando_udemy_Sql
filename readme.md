# 💾 Introducción a las Bases de Datos

Una **Base de Datos (DB)** es un conjunto de datos estructurados pertenecientes a un mismo contexto y almacenados sistemáticamente para su posterior uso y consulta. Son el corazón de cualquier aplicación o sistema de *software* moderno, ya que permiten la persistencia, organización y gestión eficiente de la información.

---

## 🗄️ Tipos Principales de Bases de Datos

Las bases de datos se dividen en dos grandes categorías, diferenciadas por su estructura interna y modelo de datos: **Relacionales (SQL)** y **No Relacionales (NoSQL)**.

### 1. Bases de Datos Relacionales (SQL)

Se basan en el **modelo relacional**, donde los datos se organizan en **tablas** con filas y columnas, y las relaciones entre ellas se definen mediante claves. Siguen rigurosamente el principio **ACID** (Atomicidad, Consistencia, Aislamiento y Durabilidad).

* **Ejemplos:** MySQL, PostgreSQL, Oracle, SQL Server.

### 2. Bases de Datos No Relacionales (NoSQL)

Abarcan modelos variados que no utilizan la estructura rígida de tablas. Están diseñadas para manejar grandes volúmenes de datos, alta velocidad de escritura y **escalabilidad horizontal**. Siguen el principio **BASE** (Básicamente Disponible, Estado Suave, Consistencia Eventual).

* **Tipos Principales:**
    * **Clave-Valor:** (Redis, DynamoDB)
    * **Documentales:** (MongoDB, Couchbase)
    * **Grafo:** (Neo4j)

---

## ⬆️ Escalabilidad Vertical vs. Horizontal

La **escalabilidad** define la capacidad de un sistema para manejar una carga de trabajo creciente. Las bases de datos se diferencian fundamentalmente en cómo abordan este crecimiento.

### Escalabilidad Vertical (Scale Up)
* **Definición:** Consiste en aumentar la capacidad de un **único servidor** (máquina).
* **Acción:** Comprar o asignar más recursos (CPU, RAM, disco duro más rápido) al servidor existente.
* **Modelo Típico:** **Bases de Datos Relacionales (SQL).**
* **Límite:** Siempre hay un límite físico en la potencia del servidor más grande disponible.

### Escalabilidad Horizontal (Scale Out)
* **Definición:** Consiste en distribuir la carga de trabajo y los datos a través de **múltiples servidores** interconectados.
* **Acción:** Añadir más máquinas (*nodos*) al clúster y particionar los datos (*sharding*).
* **Modelo Típico:** **Bases de Datos No Relacionales (NoSQL).**
* **Ventaja:** El crecimiento es prácticamente ilimitado, ya que se pueden añadir tantos nodos como se necesiten.

---

## ⚖️ Pros y Contras entre Tipos de Bases de Datos

| Característica | Bases de Datos Relacionales (SQL) | Bases de Datos No Relacionales (NoSQL) |
| :--- | :--- | :--- |
| **Estructura** | Rígida y predefinida (Esquema fijo). | Flexible y dinámica (Esquema fluido). |
| **Escalabilidad** | Principalmente **Vertical**. | **Horizontal** (adición de nodos). |
| **Integridad** | Alta (Garantía **ACID**). Excelente para transacciones. | Menor (Consistencia Eventual **BASE**). Prioriza la disponibilidad. |
| **Consultas** | Lenguaje estandarizado y potente (SQL). | Varios lenguajes de consulta, menos estandarizados. |
| **Pros** | Integridad de datos garantizada, relaciones claras, consultas complejas. | Escalabilidad masiva, flexibilidad de desarrollo, alto rendimiento. |
| **Contras** | Dificultad para escalar horizontalmente, límites físicos en la escala vertical. | Menor integridad transaccional, puede haber redundancia. |