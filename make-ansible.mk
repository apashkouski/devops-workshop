ansible-vaults-encrypt:
#	ansible-vault encrypt  --vault-id pass ansible/production/group_vars/all/vault.yml
	ansible-vault encrypt  --vault-id pass ansible/group_vars/all/vault.yml

ansible-vaults-decrypt:
#	ansible-vault decrypt --vault-id pass ansible/production/group_vars/all/vault.yml
	ansible-vault decrypt --vault-id pass ansible/group_vars/all/vault.yml

ansible-vaults-edit:
	ansible-vault edit ansible/production/group_vars/all/vault.yml
