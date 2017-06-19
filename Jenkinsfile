def upstream_repo = 'https://github.com/ufz/ogs-data'

node('docker') {
    checkout scm

    def image = docker.image('ogs6/gcc-base:latest')
    image.pull()
    image.inside() {
        stage('git diff check') {
            sh """git remote set-url --add upstream ${upstream_repo}
                  git fetch upstream master
                  git config core.whitespace -blank-at-eof
                  git diff --check `git merge-base upstream/master HEAD`
                  git remote rm upstream""".stripIndent()
        }
        stage('xml lint') {
            sh 'xmllint --noout ./**/*.prj'
        }
    }
}
