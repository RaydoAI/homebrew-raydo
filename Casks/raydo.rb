cask "raydo" do
  version "2.2.8"
  depends_on arch: :arm64

  sha256 "c0a5a6e03218fee3d37703aaa6c28cfe11ae2dc583c20bfccfd8a5cd1ecafd94"

  url "https://down.raydo.ai/desktop/install/Raydo_2.2.8_arm64.dmg"

  name "Raydo"
  desc "Desktop AI operations workspace"
  homepage "https://raydo.ai"

  livecheck do
    url "https://down.raydo.ai/desktop/install/latest-macos.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Raydo.app"

  zap trash: [
    "~/Library/Application Support/Raydo",
    "~/Library/Caches/Raydo",
    "~/Library/Logs/Raydo",
    "~/.Raydo",
  ]
end
