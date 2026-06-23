cask "supervision" do
  version "0.1.0"
  sha256 "4bb78cad13e8111d0ade77a1c21204eaf6dcf0277914fff77198625e5777f14a"

  url "https://github.com/johnliu/supervision/releases/download/v#{version}/stable-macos-arm64-Supervision.dmg"
  name "Supervision"
  desc "Native code-review companion for LLM-driven development"
  homepage "https://github.com/johnliu/supervision"

  # Apple Silicon only, and unsigned — clear quarantine after install:
  #   xattr -dr com.apple.quarantine /Applications/Supervision.app
  depends_on arch: :arm64

  app "Supervision.app"

  zap trash: [
    "~/.supervision",
  ]
end
