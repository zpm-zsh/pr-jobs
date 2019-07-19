: ${PR_JOBS_PREFIX:=" "}
: ${PR_JOBS_SUFFIX:=""}
: ${PR_JOBS_SYMBOL:=""}

DEPENDENCES_ZSH+=( zpm-zsh/colors )

if command -v zpm >/dev/null; then
  zpm zpm-zsh/colors
fi

_pr_jobs() {
  
  local jobs=$( jobs | wc -l )
  
  if [[ $jobs -gt 0 ]] ; then

    if [[ $CLICOLOR = 1 ]]; then
      pr_jobs="$PR_JOBS_PREFIX%{$c[blue]$c_bold$c_dim%}$PR_JOBS_SYMBOL%{$c_reset%}$PR_JOBS_SUFFIX"
    else
      pr_jobs="$PR_JOBS_PREFIX$PR_JOBS_SYMBOL$PR_JOBS_SUFFIX"
    fi
    
  else
    pr_jobs=''
  fi
  
}


precmd_functions+=(_pr_jobs)
