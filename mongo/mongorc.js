
function runShell(cmd) {
	run("bash", "-c", cmd);
}


function underscore() {
	runShell("cp -f $HOME/environment/mongo/underscore.js /tmp/mongo_underscore.js");
	load("/tmp/mongo_underscore.js");

}
