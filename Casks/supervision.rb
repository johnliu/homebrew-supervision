cask "supervision" do
  version "0.1.0"
  sha256 "68a87b2492a26bcfdbea9ff99ec9e7673f70c014b2e0436c0d78aa1b39260163"

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
