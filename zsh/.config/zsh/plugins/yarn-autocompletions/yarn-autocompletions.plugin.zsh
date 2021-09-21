YARN_AUTO_COMP_PATH="$(dirname $0)/yarn-autocompletions"

_yarn_autocompletions() {
    compls=$($YARN_AUTO_COMP_PATH $1)
    completions=(${=compls})
    compadd -- $completions
}

_yarn() {
    case $words[2] in
        add)
            if [[ $words[3] == "--dev" ]]
            then
                _yarn_autocompletions "add-dev"
            else
                _yarn_autocompletions "add"
            fi
            ;;
        remove)
            _yarn_autocompletions "remove"
            ;;
        upgrade)
            _yarn_autocompletions "remove"
            ;;
        why)
            _yarn_autocompletions "why"
            ;;
        *)
            _yarn_autocompletions "scripts"
            ;;
    esac
}

compdef _yarn yarn

alias y="yarn"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yap="yarn add --peer"
alias yb="yarn build"
alias ycc="yarn cache clean"
alias yd="yarn dev"
alias yga="yarn global add"
alias ygls="yarn global list"
alias ygrm="yarn global remove"
alias ygu="yarn global upgrade"
alias yh="yarn help"
alias yi="yarn init"
alias yin="yarn install"
alias yln="yarn lint"
alias yls="yarn list"
alias yout="yarn outdated"
alias yp="yarn pack"
alias yrm="yarn remove"
alias yrun="yarn run"
alias ys="yarn serve"
alias yst="yarn start"
alias yt="yarn test"
alias ytc="yarn test --coverage"
alias yuc="yarn global upgrade && yarn cache clean"
alias yui="yarn upgrade-interactive"
alias yuil="yarn upgrade-interactive --latest"
alias yup="yarn upgrade"
alias yv="yarn version"
alias yw="yarn workspace"
alias yws="yarn workspaces"
