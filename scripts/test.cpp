#include <iostream>
#include <unistd.h>

using namespace std;

int main(){
	pid_t pid = fork();

	if(pid == -1){
		cerr << "Fork failed\n";
		return 1;
	}

	if(pid == 0){
		cout << "I am child! PID: " << getpid() << '\n';
	} else {
		cout << "I am parent! PID: " << getpid() << '\n';
	}
}
