'use strict';

const fs = require('fs');
var path = require('path');

var dbm;
var type;
var seed;

/**
  * We receive the dbmigrate dependency from dbmigrate initially.
  * This enables us to not have to rely on NODE_PATH.
  */
exports.setup = function(options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
};

exports.up = function(db) {
  try {
	let baseFolder = path.join(__dirname, 'tablas');
        let files = fs.readdirSync(baseFolder);
        for (let file of files) {
            console.log(file);
            let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
            db.runSql(sql);
            console.log('Ok........');
        }	
        return db.runSql('COMMIT');    
  } catch (err) {
    console.error('Fail......');
    throw err;
  }
};

exports.down = function(db) {
  console.log('Iniciando Delete........');
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
		DROP TABLE IF EXISTS ejercicio;
		DROP TABLE IF EXISTS objetivo;
		DROP TABLE IF EXISTS observacion;
		DROP TABLE IF EXISTS parametro;
		DROP TABLE IF EXISTS perfil;
		DROP TABLE IF EXISTS peso;
		DROP TABLE IF EXISTS plan_entrenamiento;
		DROP TABLE IF EXISTS rutina_entrenamiento;
		DROP TABLE IF EXISTS sesion;
		DROP TABLE IF EXISTS suscripcion;
		DROP TABLE IF EXISTS tipo_musculo;
		DROP TABLE IF EXISTS usuario;
	    END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Fail......');
    throw err;
  }
};

exports._meta = {
  "version": 1
};
