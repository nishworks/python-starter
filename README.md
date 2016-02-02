# Python-Starter

This is an easy to use broiler-plate to start with python. It provides developer with tox based python virtual environment setup.

### About Tox
  * Tox aims to ease packaging, testing and release process of Python software
  * tox is available as a pypi package and have to be installed in your global python library path, which will provide you with `tox` command globally.
  * Executing `tox` will create a virtual environment under $(pwd)/.tox directory, assuming you have a tox.ini file present in current directory

## Setup Guide:
  * You should have these installed:  **python 2.7+** and **pip**
  * **Tox Installation** (try with sudo if there is a permission error):
                ```
                pip install tox
                ```
  * **Project setup**
                ```
                source setup.sh
                ```
    * Following commands will be available after setup:


    | Command    | Description                            |
    |------------|----------------------------------------|
    | run        | Executes run.sh                        |
    | ipython    | Better python shell with auto-complete |
    | pspace     | cd into this directory from anywhere   |
    | activate   | Activates the virtual environment      |
    | deactivate | Deactivates the virtual environment    |

    Above commands are available from any directory as long as you are in the same shell session which was used to source the setup.sh script.


## Dependency Management
  * All pypi packages listed in requirements.txt are installed in the virtual environment.
  * Everytime a new package is added in requirments.txt, execute 'source setup.sh'
