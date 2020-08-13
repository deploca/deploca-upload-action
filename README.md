# deploca-upload-action
Deploca is a cloud based deployment environment.
With this action you can upload your compiled project files as a package to deploca.

### How to use this action
In your github workflow script, after you compiled the projects:
```yml
steps:
  - name: Compile project
    ...
  - name: Upload to deploca
    uses: deploca/deploca-upload-action@0.1.0
    id: uploader
    with:
      path: <Path to the compiled files dir>
      target: <PROJECT-KEY>/<TARGET-BRANCH>
      token: <YOUR-API-TOKEN>
```

#### Dont forget `deploca-package.yml`
When you push a package from github (or any other source control services) you should have a `deploca-package.yml` file in the folder that your compiled files are. For more information please check [deploca docs](https://docs.deploca.com/).

