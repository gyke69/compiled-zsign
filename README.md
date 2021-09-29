# Compiled zsign + Signing script
 in this repository i will compile and release the latest version of zsign, inclduing signing scipt.


# let's get started!
requirements:
1. git package
2. zip unzip package

#### just copy and paste the command down below and let it do the magic:

````sh
sudo apt-get install git zip unzip &&
git clone git@github.com:gyke69/compiled-zsign.git &&
cd compiled-zsign && chmod +x zsign sign.sh
````
#### zsign usage:
I have tested it on ubuntu 18.04 & 20.04

```bash
Usage: zsign [-options] [-k privkey.pem] [-m dev.prov] [-o output.ipa] file|folder

options:
-k, --pkey Path to private key or p12 file. (PEM or DER format)
-m, --prov Path to mobile provisioning profile.
-c, --cert Path to certificate file. (PEM or DER format)
-d, --debug Generate debug output files. (.zsign_debug folder)
-f, --force Force sign without cache when signing folder.
-o, --output Path to output ipa file.
-p, --password Password for private key or p12 file.
-b, --bundle_id New bundle id to change.
-n, --bundle_name New bundle name to change.
-r, --bundle_version New bundle version to change.
-e, --entitlements New entitlements to change.
-z, --zip_level Compressed level when output the ipa file. (0-9)
-l, --dylib Path to inject dylib file.
-w, --weak Inject dylib as LC_LOAD_WEAK_DYLIB.
-i, --install Install ipa file using ideviceinstaller command for test.
-q, --quiet Quiet operation.
-v, --version Show version.
-h, --help Show help.
```

1. Manually singing an ipa file
```bash
./zsign -k yourcert.p12 -p yourpassword -m your.mobileprovision -o outputfolder/output.ipa -b 'com.your.bundle.ID' -n 'yourbundlname' youripafile.ipa
```

#### Signing with bash script:
bash script gives you the ability to sign multiple ipa usign zsign usage, make sure you edit it according to your credential.
#### Tip!
In order to sign fast bunch of ipa files make sure you backspace -z 9 from bash script file.


### Copyright
zsign and the bash script is completely free. Please mark the source of zsign in your commercial products if possible.
