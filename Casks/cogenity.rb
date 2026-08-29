cask "cogenity" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm: "4b565cac2026f64ce2be43b1ce14e913a69919c7d271391543570df1385eb2b8", intel: "4fd4d97f5a44168d0bcc3a0e692ba464808d13096ec4a5d6d1296cd319772fa6"

  url "https://github.com/PanoptiqAI/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Account multiplexer for Claude Code and Codex"
  homepage "https://github.com/PanoptiqAI/cogenity"

  depends_on macos: :ventura

  binary "cogenity-darwin-#{arch}", target: "cogenity"
end
