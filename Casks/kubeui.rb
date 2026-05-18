cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "0.0.1"

  sha256 arm: "e48ce263aa1ea19a2ecdd880b6ba543b77d1bec88503148be94deaaba72260a1",
         intel: "adff80795e7f1bee72bf3545e2c6a322e5ee5d83fa4b120978ac331d7a6db1d4"

  url "https://github.com/IvanJosipovic/KubeUI/releases/download/v#{version}/KubeUI-osx-#{arch}.zip",
      verified: "github.com/IvanJosipovic/KubeUI/"

  name "KubeUI"
  desc "Kubernetes User Interface"
  homepage "https://github.com/IvanJosipovic/KubeUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KubeUI.app"

  zap trash: [
    "~/.kubeui",
  ]
end
