FROM jupyter/base-notebook:lab-2.2.5

USER root
# python3 setup
RUN apt-get update && apt-get install -y graphviz git

USER jovyan

RUN git clone https://github.com/IncubatorShokuhou/dask-tutorial-chinese.git ./dask-tutorial
# upstream 已删除 binder/postBuild；这里只更新 conda 环境
RUN cd dask-tutorial && conda env update -n base -f binder/environment.yml --prune && cd ..
RUN rm -f dask-tutorial/github_deploy_key_dask_dask_tutorial.enc

CMD jupyter lab
