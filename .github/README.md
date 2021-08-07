# Create Together

This is a fork of the official repository for the modpack Create Together, for Minecraft 1.16.5. This fork contains a handful of tweaks to the Create Together modpack, mostly to suit the preferences of myself and a few others who use this modpack on a personal server.

This fork mainly exists to tweak configurations of existing config files/mod configs. Adding additional mods and configs are not handled with in this repository since it is intended to stay close to upstream, housing changes that may later need to be merged in.

## Using This Fork

Use of this repository is generally unchanged from the upstream. If you wish to use this to directly set up an instance, follow the directions in the rest of this README. For those on the personal server, you will generally not be setting up the modpack instance directly from this fork.

## Contributing/Tweaking this Pack

Before making any contributions (including pulling the latest from upstream), be sure to run the `configureUpstream.sh` script from the root of this repository. (for Windows, run the script with git bash.) This only needs to be done once every time the repository is cloned.

This repository is intended to stay relatively close to upstream. Contributions are typically only accepted from those who use this modpack on the personal server mentioned earlier. Any changes that add mods or additional config files will not be accepted as these are maintained in a separate repository.

Since most changes that will end up in this repository are config file edits, if you already have verified which config changes you want to make, you may edit the files directly from this repository without going through the hassle of setting it up as an instance in your launcher.

### Pulling in latest changes from upstream

Pulling in the latest changes from upstream should generally be done in the command line so as to avoid line ending normalization issues. This fork has a `.gitattributes` file setup and the upstream setup script to keep the repository normalized. Normalization inconsistencies may throw off some tools I use with this pack and the upstream seems to be primarily maintained on Windows, which has led to the occasional hiccup when I run any of those tools in Linux due to line ending normalization.

After having executed the above-mentioned `configureUpstream.sh` script, run the following commands:

```
git checkout master
git remote update upstream
git merge upstream/master
```

After all merge conflicts have been resolved (if any), push the results back to `origin`.

## Documentation from Upstream:

### Table of Contents

-   [Testing](#testing)
-   [Setup](#setup)
    -   [MultiMC (Windows/Mac/Linux)](#multimc-linux--windows--mac)
    -   [CurseForge App (Windows/Mac)](#curseforge-app-windows--mac)
-   [Server Automation](#server-automation)
-   [Links](#links)

<hr></hr>

## Testing

If you would like to help test the modpack, you're very welcome to do so.
The best way you can test is by playing the modpack, reporting bugs and providing feedback from your experience.

There are a few things we would like testers to consider/look for:

-   Bugs
-   Things you find boring/tedious
-   Things that need small optimizations, such as advancement text and textures.

# Setup

### For Contributors and Testers

Follow these steps to setup your workspace:

## MultiMC (Linux / Windows / Mac)

#### Setup MultiMC Instance

1. Download [MultiMC](https://multimc.org/#Download) and [Git](https://git-scm.com/downloads) if you haven't already.
2. Open MultiMC.
3. Click Add Instance, choose Minecraft 1.16.5, click Ok.
4. Click Edit Instance.
5. Click Install Forge, pick the latest version.

#### Repository Setup

6. Fork and clone the repository into the MultiMC Instance.
7. Open the folder of the MultiMC Instance you made (step 1-5), and go into the .minecraft folder - Open a terminal/command line and use the following commands:

```sh
git init                                            # Initialize git in folder
git remote add origin URLToYourForkOfTheModpack     # Set remote origin to your fork of the modpack
git remote -v                                       # Verify remote
git fetch
git checkout develop
git pull
```

8. Now double click the script `InstanceSyncSetup.sh` to setup InstanceSync. It is found in the `automation` folder.

You're done!

Tip: If you run into issues, verify that you are using the right Minecraft and Forge version in your MultiMC instance!

## CurseForge App (Windows / Mac)

1. Download the [CurseForge App](https://curseforge.overwolf.com/) and [Git](https://git-scm.com/downloads) if you haven't already.
2. Fork and clone the repository to the Instances folder of the CurseForge App, the default path is `C:\Users\{UserName}\Documents\Curse\Minecraft\Instances`.

    - _Note: If you've previously used the Twitch App the path will most likely be `C:\Users\{UserName}\Documents\Twitch\Minecraft\Instances`._

3. Double click the script `InstanceSyncSetup.bat` to setup InstanceSync. It is found in the `automation` folder.
4. Open the CurseForge App and you should see the modpack. If you already had CurseForge App open, restart it.

You're done!

# Server Automation

An easier way to keep your server running on the latest modpack version.
Follow the below steps to be able to update modpack version with only a few clicks.

## Automatic updates with Git

_Note: `.bat` files are for Windows, `.sh` are for Mac / Linux._

1. Clone the repository to an empty folder.
2. Open the `automation` folder.
3. Run the script `InstanceSyncSetup`.
4. Run the script `update-server`.

Re-run the script `update-server` whenever you want to update to a new modpack version.

**Notes**

-   Using the `update-server` script will reset changes you've made to all files tracked by the repository.
-   A world and mod folder backup are created before updating
-   Anything put in the `overrides` folder will be copied into the root folder when the `update-server` script is finished - I recommend you put any changed configs and added mods there.

## Links

-   [CurseForge](https://www.curseforge.com/minecraft/modpacks/createtogether)

-   [Discord](https://discord.gg/HnWNd7X)
