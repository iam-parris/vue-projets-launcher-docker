# Docker Launcher Vue Projects:

Vue Projects launcher via docker container.

## Components:
* * *
#### Dockerfile:
- Docker image configuration, with the build tools.

## Usage:
* * *
1.  Build launcher image.
    - Execute command:
        
        <code>  docker build -t launcher-projects-vue --build-arg USER_ID=youUserId --build-arg GROUP_ID=youGroupId--build-arg USER_NAME=youUserName . </code>

      _Note: Args are needed to save the project in your local environment_

    _ _ _

2. Configure you local enviroment:
    - Create your local path, to save the different projects. 
    - Example:

        <code> mkdir -p ../vue-projects </code>

    _Note: this directory is created to be associated inside the launcher container_

    _ _ _

3. Connect with docker container for launcher use.
    - Execute command:

      <code> docker run -it -v /<_your local path_>/:/project launcher-projects-vue </code>
    _ _ _

4. Make vue project @vuecli:
    - Execute command:

        <code> vue create hello-world </code>
    - You will be prompted to pick a preset. You can either choose the default preset which comes with a basic Babel + ESLint setup, or select "Manually select features" to pick the features you need.
    _ _ _

5. Prepare Project integration ci:
    - coming soon
    _ _ _





