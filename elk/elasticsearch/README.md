# Usage of official [elasticsearch image](Dockerfile)

      docker create network elk

      docker run -d --name elasticsearch --net elk -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:5


