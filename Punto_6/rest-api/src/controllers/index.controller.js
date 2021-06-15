const { Pool } = require('pg')

const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    password: 'toor',
    database: 'petsapi',
    port: '5432'
})

const getPets = async (req, res) => {
    const response = await pool.query('SELECT * FROM public.mascota WHERE propietario IS NULL ')
    res.status(200).json(response.rows)
}

module.exports = {
    getPets
}
