def upstream_repo = 'https://github.com/ufz/ogs-data'

node('master') {
    checkout scm

    sh """git remote add upstream ${upstream_repo}
          git fetch upstream master
          git config core.whitespace -blank-at-eof
          git diff --check `git merge-base upstream/master HEAD`
          git remote rm upstream""".stripIndent()

    step([$class: 'GitHubCommitStatusSetter'])
}
