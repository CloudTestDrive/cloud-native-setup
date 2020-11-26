export PROJECT_DIR=$HOME/cloud-native-setup/cloud-native-setup
export SCRIPTS_DIR=$PROJECT_DIR/scripts
export SETUP_SCRIPTS_DIR=$SCRIPTS_DIR/setup
cd $SETUP_SCRIPTS_DIR
echo Running Lombok Installer
bash installLombok.sh
echo Running maven repo init process
bash mavenInitialSetup.sh