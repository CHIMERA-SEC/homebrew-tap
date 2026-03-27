cask "chimeravpn" do
  version "1.0.1"
  sha256 "a005bb51f09f0957cb294d720996076f65114c00c9cb5fbd2012388eaa654771"

  url "https://github.com/CHIMERA-SEC/downloads/releases/download/v#{version}/ChimeraVPN-#{version}.pkg"
  name "ChimeraVPN"
  desc "Secure WireGuard-based VPN client"
  homepage "https://chimerasec.com"

  pkg "ChimeraVPN-#{version}.pkg"

  uninstall script: {
              executable: "/usr/local/bin/chimeravpn",
              args: ["service", "stop"],
              sudo: true,
            },
            pkgutil: "com.chimerasec.chimeravpn",
            delete: [
              "/Applications/ChimeraVPN.app",
              "/usr/local/bin/chimeravpn",
            ]
end
