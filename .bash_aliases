#MAGENTO2
alias m2='php bin/magento'
alias m2c='m2 cache:flush'
alias m2up='m2 setup:upgrade'
alias m2cc='rm -rf var/cache/ var/generation/ var/view_preprocessed/'

alias m98='./n98-magerun2.phar'
alias m98hint='m98 dev:template-hints \ && m98 dev:template-hints-blocks \ && m2c'
alias m98cc='m98 cache:clean'
alias m2down='m2cc && m98 sys:setup:downgrade-versions'
alias m2br='m2down && m2up'

#MYSQL
alias sql='mysql -uroot -padmin123'

#OTHERS
alias cmvp777='sudo chmod -R 777 var/ pub/'
alias getm98='wget https://files.magerun.net/n98-magerun2.phar && chmod +x ./n98-magerun2.phar'

#GIT
alias gs='git status'
alias gb='git branch'
alias gp='git pull'
alias gcm='git commit'
