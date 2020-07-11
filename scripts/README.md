To convert the bibtex files to our site publications:

1. Create virtual env `virtualenv venv`
2. Activate `source venv/bin/activate`
3. Install dependencies `pip install -r requirements.txt`
3. Put all the bibtex files inside the `scripts/data` directory (*.bib format)
4. Run `./bibtex-to-publications.sh`. This will populate the `content/publications` directory
5. Deactivate `deactivate`