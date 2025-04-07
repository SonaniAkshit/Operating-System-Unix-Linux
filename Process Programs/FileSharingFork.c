#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    int fp;
    char buff[16];  // Increased size to store null terminator
    int pid;

    fp = open("file.txt", O_RDONLY);
    if (fp < 0) {
        perror("Error opening file");
        exit(1);
    }

    pid = fork();

    if (pid < 0) {
        perror("Fork failed");
        exit(1);
    }

    if (pid == 0) {  // Child process
        printf("\nChild process starts with ID %d ....\n", getpid());
        if (read(fp, buff, 15) < 0) {
            perror("Read error");
        }
        buff[15] = '\0';  // Null terminate string
        printf("%s\n", buff);
    } else {  // Parent process
        printf("\nParent process starts with ID %d ....\n", getpid());
        if (read(fp, buff, 15) < 0) {
            perror("Read error");
        }
        buff[15] = '\0';  // Null terminate string
        printf("%s\n", buff);
    }

    close(fp);
    return 0;
}

