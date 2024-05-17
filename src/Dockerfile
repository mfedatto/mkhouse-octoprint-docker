FROM octoprint/octoprint:latest

# Oh My Posh by MFedatto
RUN apt update
RUN apt install -y \
    curl \
    unzip \
    wget
RUN curl -s https://gist.githubusercontent.com/mfedatto/475a009c0713428503fed83b62a3a2e4/raw/6275e85e643244be535f288b2b8c62e6562adb1f/mfedatto-omp-bash.sh | bash
RUN curl -s https://gist.githubusercontent.com/mfedatto/475a009c0713428503fed83b62a3a2e4/raw/6275e85e643244be535f288b2b8c62e6562adb1f/mfedatto-context.sh | bash -s -- \
    docker \
    \\#e5f2fc \
    \\#00084d
RUN rm -rf ~/themes

# ffmpeg
RUN apt install -y \
    ffmpeg

# plugins
RUN pip install "https://github.com/paukstelis/OctoPrint-Cancelobject/archive/master.zip"
RUN pip install "https://github.com/FormerLurker/Octolapse/archive/master.zip"
RUN pip install "https://github.com/jneilliii/OctoPrint-BedLevelVisualizer/archive/master.zip"
RUN pip install "https://github.com/bradcfisher/OctoPrint-ExcludeRegionPlugin/archive/master.zip"
RUN pip install "https://github.com/jneilliii/OctoPrint-PrusaSlicerThumbnails/archive/master.zip"
RUN pip install "https://github.com/OllisGit/OctoPrint-DisplayLayerProgress/releases/latest/download/master.zip"
RUN pip install "https://github.com/Kragrathea/OctoPrint-PrettyGCode/archive/master.zip"
RUN pip install "https://github.com/imrahil/OctoPrint-NavbarTemp/archive/master.zip"
RUN pip install "https://github.com/jneilliii/OctoPrint-FloatingNavbar/archive/master.zip"
RUN pip install "https://github.com/j7126/OctoPrint-Dashboard/archive/master.zip"
RUN pip install "https://github.com/fabianonline/OctoPrint-Telegram/archive/master.zip"
RUN pip install "https://github.com/The-EG/OctoPrint-CameraSettings/archive/main.zip"
RUN pip install "https://github.com/FormerLurker/ArcWelderPlugin/archive/master.zip"
RUN pip install "https://github.com/eyal0/OctoPrint-PrintTimeGenius/archive/master.zip"

# Clean-up
RUN apt install -y deborphan
RUN deborphan | xargs apt -y remove --purge
RUN apt autoremove -y
RUN apt clean
RUN rm -rf /var/tmp/* /var/log/*.log

CMD ["/bin/bash"]
