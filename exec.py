import subprocess
import shlex


def main():
    subprocess.run(shlex.split("java -version"))


if __name__ == "__main__":
    main()
