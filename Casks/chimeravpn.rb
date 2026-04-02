cask "chimeravpn" do
  version "1.0.2"
  sha256 "4109e74db3cf03abd4b966e21a3e23726f673e4014d0108776c3c790933ca540"

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
