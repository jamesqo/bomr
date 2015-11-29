# bomr

Is your text editor polluting your precious code with UTF-8 BOMs? bomr is here to help.

## Usage

```bash
bomr <files>
```

### I want to do this for all files in &lt;dir&gt;.

```bash
bomr -r <dir>
```

#### Except for dirs or files whose full name matches &lt;pattern&gt;.

```bash
bomr -r <dir> -e "<pattern>" # note the quotes
```

## Supported Platforms

Any system that supports Bash should be good to go, including:

- Linux
- OS X
- Git Bash (aka MinGW)
- Cygwin

## Installing bomr

Linux and OS X:

```bash
installpath='/usr/local/bin/bomr' # modify as needed
curl -sSL 'https://github.com/jamesqo/bomr/raw/master/bomr' | sudo tee $installpath
chmod +x $installpath
```

Windows (run from a command prompt):

```cmd
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object Net.WebClient).DownloadString('https://github.com/jamesqo/bomr/raw/master/install.ps1'))" && set path=%path%;%LocalAppData%\bomr
```
