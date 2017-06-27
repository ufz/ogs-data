def upstream_repo = 'https://github.com/ufz/ogs-data'

node('docker') {
    checkout scm

    def image = docker.image('ogs6/gcc-base:latest')
    image.pull()
    image.inside() {
        stage('git diff check') {
            sh """git config core.whitespace -blank-at-eof
                  git diff --check `git merge-base origin/master HEAD`
                  """.stripIndent()
        }
        stage('xml lint') {
            sh 'find -name \'*.prj\' -exec xmllint --noout {} \\;'
        }
    }
}
