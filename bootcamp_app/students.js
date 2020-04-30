const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT s.id, s.name, c.name AS cohort_name
FROM students AS s
JOIN cohorts AS c
  ON s.cohort_id = c.id
WHERE c.name LIKE $1
LIMIT $2;
`, [process.argv[2] + '%', Number(process.argv[3])])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
});