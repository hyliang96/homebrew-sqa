cask 'slowquitapps' do
  version '0.8.1'
  sha256 '418ab46042087b52b656ee3b18854ec0a21593a2da2b341e3090715f035c18a2'

  url "https://github.com/hyliang96/SlowQuitApps/releases/download/v#{version}/SlowQuitApps.zip"
  # url "https://github.com/dteoh/SlowQuitApps/releases/download/v#{version}/SlowQuitApps.zip"
  name 'SlowQuitApps'
  homepage 'https://github.com/hyliang96/SlowQuitApps'
  appcast 'https://github.com/hyliang96/SlowQuitApps/releases.atom'

  depends_on macos: '>= :mojave'

  def install
    bin.install sqa
  end

  app 'SlowQuitApps.app'

  caveats <<-DESC
  Accessibility permissions must be reset after updating or re-installing.

  Instructions are available in the README at #{homepage}
  DESC
end
