import logging
#!/usr/bin/env python3
"""
Just an example.
Execute a command with args given, return a standard output.
"""
import shlex
import subprocess

logging.basicConfig(format='%(asctime)s - %(levelname)s - %(message)s',
                    level=logging.DEBUG)


def run_with_stdout(command):
    try:
        args = shlex.split(command)
        process = subprocess.run(args,
                                 check=True,
                                 capture_output=True,
                                 text=True)
        return process.stdout
    except subprocess.CalledProcessError as err:
        logging.debug(err)
    except subprocess.TimeoutExpired as err:
        logging.debug(err)