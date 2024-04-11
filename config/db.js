const { Sequelize } = require('sequelize');
const env = require('./config.js');

const db = new Sequelize(
  env.DB_DATABASE, 
  env.DB_USER, 
  env.DB_PASSWORD, 
  {
    host: env.DB_HOST,
    dialect: 'mysql',
    port: env.DB_PORT
  }
);

async function authenticate() {
  try {
    await db.authenticate();
    console.log('Conexión establecida correctamente.');
  } catch (error) {
    console.error('Error al conectar a la base de datos:', error);
  }
}
authenticate();

module.exports = db;