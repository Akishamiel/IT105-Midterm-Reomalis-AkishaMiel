# Database Indexing

### The Test Query
We tested searching for a patient by their last name:
`SELECT * FROM Patients WHERE LastName LIKE 'C%';`

### Execution Before Indexing
* **Action:** Ran the query on the unindexed `Patients` table.
* **Process:** The database engine performed a **Full Table Scan**, meaning it had to read every single row in the table to check if the `LastName` started with 'C'.
* **Time:** While fast with only 10 records, in a database with 100,000 records, this process takes significant time (e.g., 0.45 seconds).

### Applying the Index
We created an index on the `LastName` column:
`CREATE INDEX idx_patient_last_name ON Patients(LastName);`

### Execution After Indexing
* **Action:** Ran the exact same query again.
* **Process:** The database engine used the **Index Scan**. It looked up the B-Tree index structure, instantly located the block where 'C' names are stored, and retrieved only those specific rows.
* **Time:** Near instantaneous (e.g., 0.01 seconds).

### Why did it change? Why is it faster?
An index works exactly like the index at the back of a textbook. Instead of reading every page to find a topic (Full Table Scan), the database looks at the index, finds the exact location of the data, and jumps straight to it.

### Why is indexing important?
Indexing drastically improves the speed of data retrieval operations on database tables. In large-scale systems (like hospital records with millions of patients), without indexing, simple search queries or `JOIN` operations would cause the system to freeze or crash due to high CPU and memory usage.