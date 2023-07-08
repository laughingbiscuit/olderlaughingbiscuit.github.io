# Notepad

- `static/` contains static files to be used on the site. this could include long-form blogs, images, screencasts, ttygifs
- `static/*.txt` are also converted to pngs
- `static/*.uml` are also converted to pngs with plantuml
- `scripts/*.sh` contains scripts that will run by the pipeline and the output stored
- `scripts/*.test` contains scripts to assert the results of the above that must return 0
- any scripts that won't be run by the pipeline are directly added to the static/ dir
- run orchestrates everything

- principles - use this for everything, only use other repos for forks
  - runs anywhere with docker
