## Make + Docker

Para ejecutar con Docker siga los siguientes comandos:

```
git clone https://github.com/lecheynata/dgalab.git
cd gdalab
make modules_clone
make up
```

La api puede ser accedida desde http://localhost/api.

## Database seeding and refresing

**Rellenar la base de datos con los datos basicos para su uso en donde se incluyen: customers, communes, regions and users.

```
make populate_db
```

**Refrescando la base de datos

```
make repopulate_db
```

## API Specification
