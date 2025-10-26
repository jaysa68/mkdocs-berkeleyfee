
# Local Development

## Pulling recent changes

Run `git pull origin main` to get any changes made to github.

Do this before you start making new edits!

## First Time

1. set up a github account
1. install python ([python.org/downloads](https://www.python.org/downloads/)
1. open a terminal, run `git clone git@github.com:jaysa68/mkdocs-berkeleyfee.git`
    - [set up an SSH key on github if you need
      to](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. in same terminal, run `cd mkdocs-berkeleyfee`
1. now run `python3 -m pip install -r requirements.txt`
1. run `mkdocs serve`
1. open url in your browser that it outputs, likely `https://127.0.0.1:8000`. this is a local instance of the website where you can test changes

in the future, just open a terminal, run `cd mkdocs-berkleley` to enter the folder, then run `mkdocs serve`


## Uploading Changes

1. Run `git add --all`
2. Run `git commit -m "description of your changes"`
3. `git push`


# TODO
JAYSA:
- finish overview page charts
    - sum in center of chart
    - make the other 3 charts
- handle in-text citations, possibly footnotes: https://squidfunk.github.io/mkdocs-material/reference/footnotes/#fn:2
- make charts for wellness and Big C discretionary funding
- run on cloud VM instead of jaysa's homelab


RODRIGO:
- collect wellness proposals that were funded last year
    - if you have time, do this for Big C, CACSSF, and TGIF as well
    - find class pass referenda
    - bylaws!
- look through old wellness agendas for links to resources
- if possible, find websites/instagrams/other resources for each funded proposal
- link old voting spreadsheets in resources

MANAL:
- create health fee page under campus-based fees out of HFAB notion
    - use committee summary page too!
