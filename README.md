# Restaurant CMS
Starter project for Express, AngularJS, CoffeeScript, LESS, JADE, TwitterBootstrap, Mongoose.
Just my personal project for learning, really.

## How to Install
Assuming you are already in the project directory.
Install Mongo database
```bash
$ sudo apt-get install mongodb
```
Change db setting if you wish, you would also need to reflect the same changes to config/default.coffee
```bash
$ cd scripts/config
```
Initialize mongo db with predefined data
```bash
$ cd ../
$ ./setupMongodb.coffee
```
And you are good to go.


## How to Run
```bash
$ coffee app.coffee
```
or
```bash
$ node app,js
```

## Scripts Explained
### Test scripts
Kicks off end to end tests with karma
```bash
$ ./e2e-test.sh
```

Kicks off unit tests with karma
```bash
$ ./test.sh
```

### MongoDb scripts
The script uses node-config package to read the configs based env.
By default, the script will read default.coffee for properties.

Please refer to https://github.com/lorenwest/node-config if you wish to set config for different envs.

setupMongodb.coffee read config/default.coffee and creates the db with the given name @ given host.
It will create the user with the given password.
After that, it will create and load collections defined in the config from data/ directory.

```bash
$ coffee setupMongodb.coffee
```

loadModelData.coffee is used to load individual collection
```bash
$ coffee loadModelData.coffee <modelName> [dataFilename]
```

#### Makefile
Clean up useless files and compile .coffee -> .js, .less -> .css, .jade -> .html
```bash
$ make
```
Compile for production
```bash
$ make production
```
Clean up
```bash
$ make clean
```
You can also run make coffee, make jade, make less to compile these extensions individually