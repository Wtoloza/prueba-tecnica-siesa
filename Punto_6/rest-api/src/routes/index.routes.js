const { Router } = require('express')
const router = Router()

const { getPets } = require('../controllers/index.controller')

router.get('/', getPets)


module.exports = router