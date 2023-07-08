# Coding
## Development Environment

Everything I do is in either a browser or the terminal. By using a small number of
powerful CLI tools, I can gain expertise, easily copy and paste and use them portably
inside docker/termux on any Windows, Mac, Linux or Android device.

### Editor - `busybox vi` 

<div id="vi-demo"></div>

It has some [limitations](https://en.m.wikibooks.org/wiki/Learning_the_vi_Editor/BusyBox_vi) but is simple. Using this editor forces me to
be conscious about the amount of text I am writing and to keep things simple. This setup removes the crutch of assists such as code completion, syntax highlighting and refactor tools.
This trains me to code well, agnostic of tooling. I have no dotfile to manage, which took a lot of my time when I used
full-fat `vim`.

Simple text files are great for anything you would do on a whiteboard too. Here is
an example of a wireframe.

![](wire.txt.png)

### File Manager - `nnn` 

<div id="nnn-demo"></div>

A [suckless](https://suckless.org) recommendation, I mainly use this lightweight file manager during presentations to show directory structures. Usually I just
use shell operations to create, move, copy and delete files and directories.

### Terminal Multiplexer - `tmux`

<div id="tmux-demo"></div>

When using the terminal a lot, it is useful to be able to split the screen and have multiple windows without relying on the terminal emulator application
itself.

### Web Server - `busybox httpd`/`nginx` 

For simple projects that only require static, plain HTTP hosting, `busybox httpd` is perfect. It also supports basic authentication and simple CGI scripts.
For anything serious, `nginx` + `letsencrypt` is my tool of choice.

Here is a script demonstrating the use of `busybox httpd`. 

```
$HTTPD_SCRIPT
```

You can see the output of the latest [run](CallHTTPD.sh.out).

### HTTP Client - `curl`

The gradfather of HTTP clients. There are great UI alternatives like Postman and Insomnia, and some neat CLI alternatives like httpie and hurl. However the omnipresent 
nature of `curl` means I haven't switched yet.

### Source control - `git` + `*` 

`git` CLI and whatever hosting tool. They all have pipelines, issue management and wikis these days.

### Containers - `docker` 

I use the open-source linux version to avoid licensing issues.

### Container orchestration - `kind` 

I have recently moved from k3d to kind for local container orchestration, however in production I would use any cloud flavour of kubernetes.

### Diagramming - `plantuml` or `plaintext` 

Java is heavy, but the huge number of supported diagram types and configuration options means that `plantuml` is still my tool of choice.

### Word Processing - `vim` + `pandoc` + `weasyprint` 

I take all my notes in `vi` and can quickly use pandoc to generate pretty pdf versions using company fonts/colour schemes. By using `weasyprint`
I can customise the style of documents with CSS instead of getting in latex templates.

### Presentations - `vim` + `mdp` 

I keep my plaintext slides in markdown and present with mdp, however will quickly switch to my terminal or browser for live demonstations.

### Browser - `*` 

Any browser is fine - I don't tend to install any plugins anyway.

### Window Manager - `dwm` 

If I am on a Linux desktop such as my Raspberry Pi, I will install `dwm` for a lightweight tiling setup. 

### Terminal Emulator - `*`

For linux desktop, I tend to use `xfce4-terminal` instead of `st` for easier customisation. On windows and mac, I am happy with the vanilla terminal. On android I
grab the latest version on Termux from FDroid.

### Scripting - `busybox sh` 

I tend to write scripts in POSIX shell for maximum portability. `shellcheck` is a great linting tool to catch any common mistakes in scripting. If I am scripting 
against a text file, then I may alternatively use `busybox awk` and `busybox sed`.

### Programming - `*` 

Whatever is the right tool for the job. Historically I leaned towards ES5 JavaScript/NodeJS as a default for its simplicity.

### Cloud - `linode` / `*` 

Linode for personal projects, any of the big clouds for customer projects. I have a soft spot for GCP since I used it most in my time working at Apigee.

### Password Manager - `onepass` 

I used to use lastpass as it has a nice CLI, however after various _unauthorized access issues_ I have moved to onepass.

### Terminal Recording - `asciinema`

`asciinema rec filename.cast` then use the local [player](https://github.com/asciinema/asciinema-player)

# Examples

## PlantUML

![](eg.png)

## Tested Script

```
$TESTED_SCRIPT
```

## Untested Script

```
$UNTESTED_SCRIPT
```

## Calling Docker

```
$CALL_DOCKER
```

## Screenshot from web

![](last-screenshot.png)

