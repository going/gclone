package main

import (
	_ "github.com/going/gclone/backend/all" // import all backends
	_ "github.com/going/gclone/backend/drive"
	_ "github.com/going/gclone/cmd/all" // import all commands
	"github.com/rclone/rclone/cmd"
	"github.com/rclone/rclone/fs"
	_ "github.com/rclone/rclone/lib/plugin" // import plugins
)

func main() {
	fs.Version = fs.Version + "-mod-V20221125"
	cmd.Main()
}
