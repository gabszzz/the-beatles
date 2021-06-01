'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
	let Musica = sequelize.define('Musica', {
		id: {
			field: 'idMusica',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		titulo: {
			field: 'titulo',
			type: DataTypes.STRING,
			allowNull: false
		},
		votos: {
			field: 'votos',
			type: DataTypes.INTEGER,
			allowNull: false
		},
	},
		{
			tableName: 'musica',
			freezeTableName: true,
			underscored: true,
			timestamps: false,
		});

	return Musica;
};
