# mediaserver
config for plex, deluge behind PIA VPN, sonarr, radarr, and datadog...all running in docker

## quickstart
1) setup your credentials:
    - PIA VPN username and password: `/opt/ansible/pia_vars.yml`
        ```
        pia:
          username: <username>
          password: <password>
        ```
    - PIA proxy settings for deluge: `/opt/ansible/deluge_vars.yml`
    
        ```
        deluge:
          proxy:
            username: <username>
            password: <password>
            hostname: proxy-nl.privateinternetaccess.com
            port: 1080
        ```

2) install ansible and use it to get containers running:
    ```
    wget https://github.com/conlon/mediaserver/blob/master/setup.sh
    chmod +x setup.sh
    ./setup.sh
    ```

2) then, from your local machine:
    ```
    ssh username@ip_of_server -L 32400:ip_of_server:32400 -N
    ```
    ...and go to http://localhost:32400/web in your browser to setup plex for the first time

3) go to http://ip_of_server:8989 to get started with sonarr
4) go to http://ip_of_server:7878 to get started with radarr
