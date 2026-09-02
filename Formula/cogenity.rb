class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.23.0/cogenity-darwin-arm64"
      sha256 "351525d15d4d7a769396174d3fea94bb0767f007605fd973cb3581895ac7e674"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.23.0/cogenity-darwin-x64"
      sha256 "38b082a4a2562af8863a9979235ee79b85fd2775d07e2827911d721b0c0f1706"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
