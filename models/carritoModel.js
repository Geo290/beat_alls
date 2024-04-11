const {Sequelize, DataTypes}  = require('sequelize');
const db = require('../config/db.js');

const carritoModel = db.define('carrito', {
    ID_Carrito:{
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        defaultValue: 1
    },
    ID_Cliente:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    ID_Producto:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    Nombre_producto:{
        type: DataTypes.STRING,
        allowNull: false
    },
    Descripcion:{
        type: DataTypes.STRING,
        allowNull: false
    },
    Cantidad_producto:{
        type: DataTypes.SMALLINT,
        allowNull: false
    },
    Precio_unitario_producto:{
        type: DataTypes.SMALLINT,
        allowNull: false
    },
    Precio_total_productos:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    Cantidad_pagar:{
        type: DataTypes.INTEGER,
        allowNull: false
    }
},
{
    tableName: 'carrito',
    timestamps: false
}
)

module.exports = carritoModel;