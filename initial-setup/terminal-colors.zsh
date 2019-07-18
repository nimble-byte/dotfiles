#!/usr/bin/env bash
# Taken form https://github.com/Mayccoll/Gogh
# This is an adaptation of the "One Half Dark" color scheme published by
# Son A. Pham under the MIT license: https://github.com/sonph/onehalf

# ====================CONFIG THIS =============================== #
export COLOR_01="#263238"           # BLACK
export COLOR_02="#a54242"           # RED
export COLOR_03="#8bc34a"           # GREEN
export COLOR_04="#f7c42a"           # YELLOW
export COLOR_05="#2196f3"           # BLUE
export COLOR_06="#9575cd"           # MAGENTA
export COLOR_07="#00bcd4"           # CYAN
export COLOR_08="#eceff1"           # WHITE

export COLOR_09="#617f8a"           # 
export COLOR_10="#ec407a"           #
export COLOR_11="#9ccc65"           #
export COLOR_12="#ffb74d"           #
export COLOR_13="#42a5f5"           #
export COLOR_14="#b39ddb"           #
export COLOR_15="#26c6da"           #
export COLOR_16="#ffffff"           #

export BACKGROUND_COLOR="#252525"   # Background Color
export FOREGROUND_COLOR="#eceff1"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Nightlight"
# =============================================

# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
