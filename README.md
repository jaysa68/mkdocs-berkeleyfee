
# Local Development

1. set up a github account
1. `git clone git@github.com:jaysa68/mkdocs-berkeleyfee.git`
    - [set up an SSH key on github if you need
      to](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. install python
3. run the following cmd in the project's root directory: `python3 -m pip install -r requirements.txt`
4. run `mkdocs serve`
    - now as you edit files, they will be dymanically updated!

## Uploading Changes

1. Run `git add --all`
2. Run `git commit -m "description of your changes"`
3. `git push`

## Getting recent changes

Run `git pull origin main` to get any changes made to github.

Do this before you start making new edits!

# TODO
- run on cloud VM instead of jaysa's homelab
