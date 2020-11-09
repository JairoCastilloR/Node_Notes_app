const express = require('express');
const router = express.Router();
const db = require('../database');


router.get('/add', (req, res) => {
    res.render('usuarios/add');
});

router.post('/add', async(req, res) => {

    const { title, url, description } = req.body;
    const newLink = {
        title,
        url,
        description
    }
    console.log(newLink);
    await db.query('INSERT INTO lins set ?', [newLink])
    res.send('received');
});

router.get('/', async(req, res) => {
    const usuarios = await db.query();
    res.render('/usuarios/list', { usuarios });
})


module.exports = router;