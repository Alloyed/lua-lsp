class Tarantoollsp < Formula
	desc "LSP server for Tarantool/Lua based codewriters"
	homepage "https://github.com/artur-barsegyan/tarantool-lsp"
  	url "https://download.tarantool.org/tarantool/2.2/src/tarantool-2.2.1.1.tar.gz"
 	sha256 "42c6c61b7d9a2444afd96e4f5e1828da18ea2637d1e9d61dc543436ae48dd87f"
	head "https://github.com/artur-barsegyan/tarantool-lsp.git", :branch => "impl-cli-tools"

	# By default, Tarantool from brew includes devel headers
	depends_on "tarantool"
	depends_on "wget"
	depends_on "gcc"

	def install
		system "wget", "https://github.com/sqmedeiros/lpeglabel/archive/v1.5.0-1.tar.gz"
		system "tar", "-xzf", "v1.5.0-1.tar.gz"
		system "tarantoolctl", "rocks", "install", "lpeglabel-1.5.0-1/rockspecs/lpeglabel-1.5.0-1.rockspec"
		system "tarantoolctl", "rocks", "install", "checks"

		prefix.install "tarantool-lsp", ".rocks", "bin", "3rd-party"
	end
end
