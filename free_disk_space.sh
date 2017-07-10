###
# free_disk_space
#
# remove files from downloads folder
# clear cache for rubygem, yarn, composer, homebrew, docker
###

free_disk_space() {
    if command -v docker &> /dev/null; then
        echo "--> Clear Docker images cache" && \
        docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs docker rmi

        echo -n "--> Would you like to prune docker system ? (y/N) "
        read response
        if [[ $response = "y" ]]; then
            docker system prune -f
        fi
    fi

    command -v brew &> /dev/null && \
    echo "--> Clear Homebrew cache" && \
    brew cleanup

    command -v yarn &> /dev/null && \
    echo "--> Clear Yarn cache" && \
    yarn cache clean &> /dev/null

    command -v composer &> /dev/null && \
    echo "--> Clear Composer cache" && \
    composer clear-cache &> /dev/null

    command -v gem &> /dev/null && \
    echo "--> Clear Rubygems old versions" && \
    gem cleanup 2 > /dev/null

    echo -n "--> Clear downloads directory ? (y/N) "
    read response
    if [[ $response = "y" ]]; then
        case $(uname -s) in
            "Darwin" ) rm -r $HOME/Downloads/*;;
            *) echo "System not supported unavailable";;
        esac
    fi

    if command -v ncdu &> /dev/null; then
        echo -n "--> Would you like to run ncdu? (y/N) "
        read response
        if [[ "$response" = "y" ]]; then
            echo -n "    Run ncdu from wich path? ($HOME) "
            read response
            response=${response:-$HOME}
            ls $response &> /dev/null && ncdu $response
        fi
    fi

    return;
}
