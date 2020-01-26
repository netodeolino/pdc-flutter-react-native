const home = async (req, res) => {
  res.json({ home: 'Prova de Conceito - Flutter React Native' });
}

const login = async (req, res) => {
  try {
    const { email, password } = req.body;
    console.log(email, password);

    if (email === 'login@email.com' && password === '4321') {
      res.json({ email, password, name: 'Login', picture: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/1024px-User_icon_2.svg.png' });
    } else {
      res.status(401).send({ error: 'Email e/ ou senha incorretos' });
    }
  } catch (error) {
    res.status(500).send(error);
  }
}

module.exports = {
  home, login
}