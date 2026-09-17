# Dask 教程（中文）

这是 [dask/dask-tutorial](https://github.com/dask/dask-tutorial) 的简体中文翻译。本教程最近一次完整讲授是在 SciPy 2022（Austin, Texas）。
[SciPy 2022 教程视频可在线观看](https://youtu.be/J0NcbvkYPoE)。

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/IncubatorShokuhou/dask-tutorial-chinese/main?urlpath=lab)
[![Build Status](https://github.com/IncubatorShokuhou/dask-tutorial-chinese/workflows/CI/badge.svg)](https://github.com/IncubatorShokuhou/dask-tutorial-chinese/actions?query=workflow%3ACI)

Dask 是一个并行与分布式计算库，用来扩展现有的 Python 和 PyData 生态。它既能吃满你整台笔记本的算力，也能横向扩展到云上的集群。

> 英文原版仓库：[dask/dask-tutorial](https://github.com/dask/dask-tutorial)。本仓库会尽量跟上上游的课程结构，并把学习者会看到的说明文字译成通顺的简体中文；代码中的 API、标识符与影响程序行为的字符串保持英文。

## 准备工作

#### 1. 克隆本仓库

    git clone https://github.com/IncubatorShokuhou/dask-tutorial-chinese

然后安装所需软件包。
有三种安装方式，请选择最适合你的一种，并且 **只选一种**。
按推荐顺序为：

#### 2a) 创建 conda 环境（推荐）

在仓库根目录执行：

    conda env create -f binder/environment.yml
    conda activate dask-tutorial

#### 2b) 安装到已有环境

你需要以下核心库：

    conda install -c conda-forge ipycytoscape jupyterlab python-graphviz matplotlib zarr xarray pooch pyarrow s3fs scipy dask distributed dask-labextension

请注意，这种方式会改动你现有环境，可能升级或降级已经安装的软件包。

#### 2c) 使用 Dockerfile

可以用仓库中的 Dockerfile 构建镜像：

    $ docker build .  # 将构建与 2a) 相同的环境

运行容器时，把下面的 ID 换成上一步输出的镜像 ID 或标签：

    $ docker run -it -p 8888:8888 -p 8787:8787 <container_id_or_tag>

上述命令会给出一个 URL（例如 `http://(container_id 或 127.0.0.1):8888/?token=<sometoken>`），用浏览器打开即可进入 notebook。你可能需要把给出的主机名改成 `localhost` 或 `127.0.0.1`。

#### 请只执行上面的一种方式！

### 启动 Jupyter

在仓库根目录执行：

    jupyter lab

如果用的是方式 2c)，这一步已经完成，不必重复。

现场教程会使用 JupyterLab；如果你更习惯经典 Jupyter Notebook，也可以继续使用。

## 链接

*  参考
    *  [文档](https://dask.org/)
    *  [示例](https://examples.dask.org/)
    *  [代码](https://github.com/dask/dask/)
    *  [博客](https://blog.dask.org/)
*  寻求帮助
    *   Stack Overflow 上的 [`dask`](http://stackoverflow.com/questions/tagged/dask) 标签，适合用法问题
    *   [GitHub Issues](https://github.com/dask/dask/issues/new) 适合缺陷报告和功能请求
    *   [Discourse 论坛](https://dask.discourse.group/) 适合一般讨论（非缺陷）
    *   参加现场教程

## 大纲

0. [概述](00_overview.ipynb) — Dask 在整个生态中的位置。

1. [DataFrame](01_dataframe.ipynb) — 对散布在集群上的许多 pandas DataFrame 做并行操作。

2. [Array](02_array.ipynb) — 分块的类 NumPy 功能，底层是分布在集群上的许多 numpy 数组。

3. [Delayed](03_dask.delayed.ipynb) — 用单个装饰器并行化一般 Python 代码。

4. [部署 / Distributed](04_distributed.ipynb) — Dask 的集群调度器，以及如何查看仪表盘。

5. [Distributed Futures](05_futures.ipynb) — 异步计算、非阻塞地拿到结果。

6. 总结
