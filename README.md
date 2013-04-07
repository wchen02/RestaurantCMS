# Restaurant CMS
Starter project for Express, AngularJS, CoffeeScript, LESS, JADE, TwitterBootstrap, Mongoose.<br/>
Just my personal project for learning, really.<br/>
I am hoping to be able to reuse most of scripts and code from this project for future projects!.<br/>

## How to Install
The following terminal commands assumes you are already in the project directory.<br/>
<br/>
Install Mongo database
```bash
$ sudo apt-get install mongodb
```
Install Elastic Search and the head plugin for GUI
```bash
$ sudo apt-get install elasticsearch
$ sudo elasticsearch/bin/plugin -install mobz/elasticsearch-head
```
Open up the browser and see Elastic Search GUI
```bash
$ open http://localhost:9200/_plugin/head/
```
Install all the dependencies
```bash
npm install
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
$ node app.js
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
The script uses node-config package to read the configs based env.<br/>
By default, the script will read default.coffee for properties.<br/>
<br/>
Please refer to https://github.com/lorenwest/node-config if you wish to set config for different envs.<br/>
<br/>
setupMongodb.coffee read config/default.coffee and creates the db with the given name @ given host.<br/>
It will create the user with the given password.<br/>
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
Compile for production ( does not work yet )
```bash
$ make production
```
Clean up
```bash
$ make clean
```
You can also run make coffee, make jade, make less to compile these extensions individually