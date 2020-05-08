# POWERLEVEL10K THEME SETTINGS

# General

typeset -g POWERLEVEL9K_MODE='nerdfont-complete'

# When set to `moderate`, some icons will have an extra space after them. This is meant to avoid
# icon overlap when using non-monospace fonts. When set to `none`, spaces are not added.
typeset -g POWERLEVEL9K_ICON_PADDING=none

# List of prompts shown on the left. Use for most important segments.
# Use the '_joined' postfix to join two elements without a subsegment separator
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir                       # current directory
  # dir_writeable_joined      # indicator if you can write to the current directory
  vcs                       # git status
)

# List of prompts shown on the right. Use for less important segments.
# Use the '_joined' postfix to join two elements without a subsegment separator
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status                  # exit status of the last command
  command_execution_time  # duration of the last command
  pyenv                   # pyhton environment
  time                    # current time
)

# Basic prompt style settings.
typeset -g POWERLEVEL9K_BACKGROUND=
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=' '
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=
# Set fancy chevrons to separate subsegments
typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008}\uf054%F{008}'
typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf053%F{008}'

typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true

typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMP_PREFIX=
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' \uf63d '

# Directories
typeset -g POWERLEVEL9K_DIR_FOREGROUND='007'
typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='012'
typeset -g POWERLEVEL9K_DIR_PATH_SEPARATOR='%F{008}/%F{006}'

typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND='002'
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='012'
typeset -g POWERLEVEL9K_DIR_ETC_FOREGROUND='004'

typeset -g POWERLEVEL9K_DIR_SHOW_WRITABLE=v2

typeset -g POWERLEVEL9K_SHORTEN_DELIMITER='%F{008}…%F{008}'
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY='none'

# VCS
typeset -g POWERLEVEL9K_VCS_COMMITS_BEHIND_ICON='\uf0ab'
typeset -g POWERLEVEL9K_VCS_COMMITS_AHEAD_ICON='\uf0aa'
typeset -g POWERLEVEL9K_VCS_STASH_ICON='\uf192'
typeset -g POWERLEVEL9K_VCS_CONFLICT_ICON='\uf057'
typeset -g POWERLEVEL9K_VCS_MODIFIED_ICON='\uf055'
typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON='\uf06a'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON='\uf059'
# Disable the default Git status formatting.
typeset -g POWERLEVEL9K_VCS_DISABLE_GITSTATUS_FORMATTING=true
# Install our own Git status formatter.
typeset -g POWERLEVEL9K_VCS_CONTENT_EXPANSION='${$((git_formatter(1)))+${git_format}}'
typeset -g POWERLEVEL9K_VCS_LOADING_CONTENT_EXPANSION='${$((git_formatter(0)))+${git_format}}'
# Enable counters for staged, unstaged, etc.
typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED,CONFLICTED,COMMITS_AHEAD,COMMITS_BEHIND}_MAX_NUM=-1

typeset -g POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
typeset -g POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=''
typeset -g POWERLEVEL9K_VCS_GIT_GITLAB_ICON=''
typeset -g POWERLEVEL9K_VCS_GIT_ICON=''

# Status
typeset -g POWERLEVEL9K_CARRIAGE_OK_ICON='\uf00c'
typeset -g POWERLEVEL9K_CARRIAGE_RETURN_ICON='\uf00d'

typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='001'

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='006'
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
typeset -g POWERLEVEL9K_EXECUTION_TIME_ICON='\uf254'

# NVM
typeset -g POWERLEVEL9K_NVM_FOREGROUND='002'

# Time
typeset -g POWERLEVEL9K_TIME_FOREGROUND='007'
typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

# Transient prompt works similarly to the builtin transient_rprompt option. It trims down prompt
# when accepting a command line. Supported values:
#
#   - off:      Don't change prompt when accepting a command line.
#   - always:   Trim down prompt when accepting a command line.
#   - same-dir: Trim down prompt when accepting a command line unless this is the first command
#               typed after changing current working directory.
typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=off
