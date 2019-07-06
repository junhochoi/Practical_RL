# docker image build:
# cd docker; docker build -t rl .

# 8G - 12G to run week04 DQN
docker run -m=12g --rm -it -v `pwd`:/notebooks -p 8888:8888 rl
