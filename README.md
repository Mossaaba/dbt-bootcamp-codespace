# Setup Instructions

[Watch the setup video](https://www.loom.com/share/642724b81eb443a0a77068b89c029409)

## Create a Virtual Environment (VENV)

```bash
virtualenv venv --python=python3.11
```

## Activate the Virtual Environment

```bash
. venv/bin/activate
```

---

# Notes

## CTE (Common Table Expression)

**Syntax:**
```sql
WITH <name_of_the_result> (<column_names>)
AS (
    <cte_query>
)
<reference_the_cte>
```

---

## ACL (Anti-Corruption Layer)

An architectural pattern that prevents a system from being polluted by external models or APIs.

---

## Materialization Types

### View
- Creates a lightweight representation of the data.
- Suitable when you **don't reuse** the data frequently.

**Avoid using if:**
- You need to **read from the same model multiple times**.

---

### Table
- Creates a fully materialized table.
- Best when **reading from the model repeatedly**.

**Avoid using if:**
- Building **single-use models**.
- The model is **populated incrementally**.

---

### Incremental
- Used for **fact tables** or **append-only tables**.
- Suitable for **incrementally adding** new data.

**Avoid using if:**
- You need to **update historical records**.

---

### Ephemeral
- Acts as a **temporary alias** for data during a build.
- Does **not** create a physical table or view.

**Avoid using if:**
- You **read from the same model multiple times**.

---


### + of materilaized : is not sub folder but if the built-in fonctionality of DBT 

### dbt run --full-refresh (Rebuild table from scartch for incrematel )


-- 
## snapshot 
A dbt snapshot captures and tracks historical changes to records in a source table over time.
It lets you detect updates (like field changes) and keep a history of how data looked at different points.

Imagine you track customer addresses — when a customer moves, a dbt snapshot saves both the old and new addresses, so you always know where they lived at any point in time.
-- 
## Tets 

### Genric test : predifined in schema.yml (unique , NotNull, Accepted Value )
### Singular test : defined in the folder tests (SQL request)


## Docs 

dbt docs generate 
dbt docs serve 