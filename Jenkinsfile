pipeline {
    agent { 
        label 'ansible-node' // Label of the Ansible control machine in Jenkins
    }

    environment {
        ANSIBLE_PLAYBOOK_PATH = "/path/to/your/ansible/playbook.yml"  // Path to the playbook on the Ansible control machine
        ANSIBLE_INVENTORY_PATH = "/path/to/your/inventory"            // Path to the inventory file on the Ansible control machine
        GIT_BRANCH = 'main'
        GIT_URL = 'https://your-git-repo-url.git'
    }

    stages {
        stage('Checkout SCM') {
            steps {
                // Optionally check out the code or playbook repository if playbooks are stored in version control
                git branch: "${GIT_BRANCH}", url: "${GIT_URL}"
            }
        }
        
        stage('Run Ansible Playbook') {
            steps {
                script {
                    // Make sure you are on the Ansible control machine (node)
                    // Execute the Ansible playbook using shell commands
                    sh """
                        ansible-playbook -i ${ANSIBLE_INVENTORY_PATH} ${ANSIBLE_PLAYBOOK_PATH}
                    """
                }
            }
        }
    }

    post {
        always {
            // Post-build actions, e.g., archive logs, send notifications, etc.
            echo "Ansible playbook execution completed."
        }
    }
}