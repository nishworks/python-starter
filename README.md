# Python-Starter

This is an easy to use broiler-plate to start with a python. It provides developer with tox based python virtual environment setup.


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


## Python Dependency Management
  * All python packages listed in requirements.txt are installed in the virtual environment.
  * Everytime a new package is added in requirments.txt, execute 'source setup.sh'
