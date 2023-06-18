# Roku BrightScript Helloworld

Starter kit for developing Roku SceneGraph apps using NodeJs and VSCode.

## Visual Studio Code

Download and install [VSCode](https://code.visualstudio.com/)

Install the [BrightScript Language plugin](https://marketplace.visualstudio.com/items?itemName=RokuCommunity.brightscript#review-details)

## Sideload / publish to Roku device

1. ensure you Roku device is in [developer mode](https://developer.roku.com/en-gb/docs/developer-program/getting-started/developer-setup.md) and make a note of the Roku device password you set.
2. create a VSCode `launch.json` file in `.vscode` folder, or automatically create one via Run and Debug menu in VSCode.
3. create a `.env` file in the `.vscode` folder.

## launch.json structure
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "BrightScript Debug: Launch",
            "type": "brightscript",
            "request": "launch",
			"envFile": "${workspaceFolder}/.vscode/.env",
			"host": "${env:ROKU_HOST}",
			"password": "${env:ROKU_PWD}",
        }
    ]
}
```
## .env structure
```
ROKU_HOST={ROKU_BOX_IP_ADDRESS}
ROKU_PWD={ROKU_DEVICE_PASSWORD}
```

## Sideloading

Ensure your Roku device and the machine that has cloned the project files are on the same network and select `Start Debugging` from the Run and Debug menu in VSCode. This will create a folder named `out` in your `workspaceFolder` with your packages Roku app / Channel called roku-deploy.zip.

Note: you can also open your Roku device IP address in a web browser, enter `rokudev` and your Roku device password, and manually sideload the roku-deploy.zip to your Roku device.

## Additional resources

For more info please checkout [RokuCommunity](https://github.com/rokucommunity) and [Roku Slack channel](https://join.slack.com/t/rokudevelopers/shared_invite/zt-1xga8lb7n-9622em03m5RsH7MFhZxoow).
