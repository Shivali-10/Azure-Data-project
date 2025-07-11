#!/bin/bash

merge_tool_path=$(translate_merge_tool_path)

diff_cmd () {
	"$merge_tool_path" --wait --diff "$LOCAL" "$REMOTE"
}

diff_cmd_help () {
	echo "Use Visual Studio Code (requires a graphical session)"
}

merge_cmd () {
	"$merge_tool_path" --wait --merge "$REMOTE" "$LOCAL" "$BASE" "$MERGED"
}

merge_cmd_help () {
	echo "Use Visual Studio Code (requires a graphical session)"
}

translate_merge_tool_path () {
	echo code
}
