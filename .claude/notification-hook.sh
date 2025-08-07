#!/bin/bash

# Claude Code 通知フック
# 確認プロンプト時に音とmacOS通知を表示

# 入力を読み取り
input=$(cat)

# 確認が必要そうな内容かチェック
if echo "$input" | grep -qi -E "(confirm|approve|allow|permit|続行|実行|確認|承認)" || 
   echo "$input" | grep -qi -E "(dangerous|risky|delete|remove|危険|削除|破壊)"; then
    
    # 音を再生
    afplay /System/Library/Sounds/Glass.aiff &
    
    # macOS通知を表示
    osascript -e 'display notification "Claude Codeが確認を求めています" with title "Claude Code" sound name "Glass"' &
fi

# プロンプトをそのまま通す
echo "$input"