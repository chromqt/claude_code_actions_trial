#!/bin/bash

# Claude Code 確認通知フック
# Claude Codeが確認を求めるときに音とmacOS通知を表示

# 音を再生
afplay /System/Library/Sounds/Glass.aiff &

# macOS通知を表示
osascript -e 'display notification "Claude Codeが確認を求めています" with title "Claude Code 確認要求" sound name "Glass"' &

# 入力をそのまま通す（必要に応じて）
cat