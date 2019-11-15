: ${PR_JOBS_PREFIX:=" "}
: ${PR_JOBS_SUFFIX:=""}
: ${PR_JOBS_SYMBOL:=""}

DEPENDENCES_ZSH+=( zpm-zsh/colors )

if (( $+functions[zpm] )); then
  zpm zpm-zsh/colors,inline
fi

_pr_jobs() {
  if [[ -n "$(jobs)" ]] ; then
    pr_jobs="$PR_JOBS_PREFIX%{$c[blue]$c_bold$c_dim%}$PR_JOBS_SYMBOL%{$c_reset%}$PR_JOBS_SUFFIX"
  else
    pr_jobs=''
  fi
}

precmd_functions+=(_pr_jobs)
