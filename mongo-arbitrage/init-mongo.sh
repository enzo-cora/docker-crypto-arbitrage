mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    var rootUser = '$MONGO_INITDB_ROOT_USERNAME';
    var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD';
    var admin = db.getSiblingDB('admin');
    admin.auth(rootUser, rootPassword);

    var user = '$MONGO_INITDB_USERNAME';
    var passwd = '$MONGO_INITDB_PASSWORD';

    var role1 = {role : "readWrite", db: '$MONGO_INITDB_DATABASE' } ;
    var role2 = {role : "readWrite", db: '$MONGO_DB_DEV'} ;
    db.createUser({ user: user, pwd: passwd, roles: [ role1, role2 ]});
EOF
#mongoimport mongodb://$MONGO_INITDB_USERNAME:$MONGO_INITDB_PASSWORD@localhost:27017/"$MONGO_INITDB_DATABASE" --file=/usr/share/data/severities.json
