include:
- requirements


/home/vagrant/shotrev_env:
    virtualenv.managed:
        - runas: vagrant
        - requirements: salt://app/requirements.txt
        - require:
            - pkg: packages


nginx:
  pkg:
    - latest
  service:
    - running
    - watch:
      - file: nginxconf


nginxconf:
  file.managed:
    - name: /etc/nginx/sites-enabled/default
    - source: salt://app/nginx.conf
    - template: jinja
    - makedirs: True
    - mode: 755