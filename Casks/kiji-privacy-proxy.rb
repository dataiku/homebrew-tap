cask "kiji-privacy-proxy" do
  version "1.1.3"
  sha256 "0966d19dcdfed4d8a2dd929a94a89c498ee691700ccb5123eefadc07f6fccb0f"

  url "https://github.com/dataiku/kiji-proxy/releases/download/v#{version}/Kiji-Privacy-Proxy-#{version}.dmg",
      verified: "github.com/dataiku/kiji-proxy/"
  name "Kiji Privacy Proxy"
  desc "Privacy layer that masks PII in requests to AI APIs"
  homepage "https://github.com/dataiku/kiji-proxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kiji Privacy Proxy.app"

  zap trash: [
    "~/.kiji-proxy",
    "~/Library/Application Support/Kiji Privacy Proxy",
    "~/Library/Caches/com.kiji.proxy",
    "~/Library/Caches/com.kiji.proxy.ShipIt",
    "~/Library/Logs/Kiji Privacy Proxy",
    "~/Library/Preferences/com.kiji.proxy.plist",
    "~/Library/Saved Application State/com.kiji.proxy.savedState",
  ]
end
