cask "cleanton" do
  version "0.3.6"
  sha256 "ab3a156e5f8519b9d9879dfc2cfb6a406b7a51949591478a37257b13532a0044"

  url "https://github.com/Olib-AI/cleanton/releases/download/v#{version}/cleanton-app-macos-arm64.tar.gz"
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
