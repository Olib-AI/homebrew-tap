cask "cleanton" do
  version "0.3.0"
  sha256 "d7a397aaa3162c4faafa741a2d45c2aaf352ecc87bd0859108ca0202142eca47"

  url "https://github.com/Olib-AI/cleanton/releases/download/v#{version}/cleanton-app-macos-arm64.tar.gz",
      verified: "github.com/Olib-AI/cleanton/"
  name "Cleanton"
  desc "Disk cleaner by Olib AI"
  homepage "https://www.olib.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: :ventura

  app "Cleanton.app"

  zap trash: "~/.config/cleanton"
end
