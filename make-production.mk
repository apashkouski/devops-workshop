U := root

production-setup:
	ansible-playbook ansible/site.yml -i ansible/production -u $U -vvvv -e 'ansible_python_interpreter=/usr/bin/python3'
production-deploy:
	ansible-playbook ansible/deploy.yml -i ansible/production -u $U -vvvv -e 'ansible_python_interpreter=/usr/bin/python3'
