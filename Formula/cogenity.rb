class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://github.com/PanoptiqAI/cogenity"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.15.0/cogenity-darwin-arm64"
      sha256 "b05b1d2d7c966bcfd3e5832da1de6cd96fa24fd6746aaa19d1a62bd40d58fb1b"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.15.0/cogenity-darwin-x64"
      sha256 "3f0dab6838233bc2b96d9adeb705104a2a90f1199b9dcfaf56b151a350e93916"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
