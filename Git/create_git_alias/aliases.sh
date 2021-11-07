# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac

alias cdmac='cd /c/gitpioneer/MAC'
alias cdaasinfra='cd /c/gitpioneer/MAC/aas-infra'
alias cdgql='cd /c/gitpioneer/MAC/mcsg-pioneer-graphql-service'
alias cdorc='cd /c/gitpioneer/MAC/mcsg-pioneer-orchestrator'
alias cdpoc='cd /c/gitpioneer/MAC/poc'
alias cdpolicy='cd /c/gitpioneer/MAC/policymgmt'
alias cdtenant='cd /c/gitpioneer/MAC/tenantmgmt'
alias cduser='cd /c/gitpioneer/MAC/usermgmt'


alias cdauto='cd /c/gitpioneer/automation'
alias cdptest='cd /c/gitpioneer/automation/pioneertest'
alias cdpauto='cd /c/gitpioneer/automation/pioneer-automation'
alias cdpmock='cd /c/gitpioneer/automation/pioneer-mock-server'
alias cdautoarti='cd /c/gitpioneer/automation/automationartifacts'