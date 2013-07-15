include:
- requirements

/home/vagrant/shotrev_env:
    virtualenv.managed:
        - runas: vagrant
        - requirements: salt://app/requirements.txt
        - require:
            - pkg: packages

# create project:
#     cmd.run:
#         - user: vagrant
#         - name: ". venv/bin/activate && django-admin.py startproject
#       --template=https://github.com/twoscoops/django-twoscoops-project/zipball/master
#         --extension=py,rst,html icecream && pip install -Ur
#         icecream/requirements/local.txt && python icecream/icecream/manage.py
#             syncdb --noinput"
#         - cwd: /home/vagrant/learning-salt/
#         - require:
#             - virtualenv: /home/vagrant/shotrev_env
#             - pkg: packages