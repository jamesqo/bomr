# bomr

![Logo](icons/icon_275_220.png)

Is your text editor polluting your precious code with UTF-8 BOMs? bomr is here to help.

## Usage

```bash
bomr <files>
```

### I want to do this for all files in &lt;dir&gt;.

```bash
bomr -r <dir>
```

#### Except for files whose full name matches &lt;regex&gt;.

```bash
bomr -r <dir> -e "<regex>" # note the quotes
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

Windows (via Cygwin or Git Bash):

```bash
curl -sSL 'https://github.com/jamesqo/bomr/raw/master/install.sh' | xargs -0 -i bash --noprofile -c '{}' && PATH+=:~/AppData/Local/bomr
```

## Contributing

Contributors are welcome! Please feel free to report bugs or make pull requests to this repo.

## License

bomr is licensed under the [BSD simplified license](license.bsd).
