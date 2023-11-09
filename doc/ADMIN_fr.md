## Configuration

Comment configurer cette application: via le panneau d'administration de GitLab ou les paramettres "CI/CD" de votre projet.

### Configuration système

Lors du premier démarrage d'un Gitlab Runner, [un exécuteur](https://docs.gitlab.com/runner/executors/) doit être choisi (Lorsque l'instance Gitlab Runner s'enregistre auprès d'une instance Gitlab). Pour l'instant, cette application YunoHost ne supporte que l'[exécuteur `docker`](https://docs.gitlab.com/runner/executors/docker.html).

## Informations additionnelles

* Pour récupérer les informations à fournir à l'installation comme le `token` ou `l'url gitlab` vous devez vous rendre ici : `Settings->CI/CD->Runners->"Set up a specific Runner manually"` dans le projet 
ou la section admin de l'instance GitLab à relier à ce runner.
* Si vous avez ce message pendant un travail : `Could not resolve host : you.domain.tld`, vous pouvez ajouter `dns_search = ["you.domain.tld"]` dans la section `[[runners]]`.
