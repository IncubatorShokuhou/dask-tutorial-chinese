**自用dask教程汉化**  

***
# Dask 教程

This tutorial was last given at SciPy 2020 which was a virtual conference.
[A video of the SciPy 2018 tutorial is available online](https://www.youtube.com/watch?v=mqdglv9GnM8).

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dask/dask-tutorial/master?urlpath=lab)

Dask提供一种在大于内存的数据集上多核运行的方法。

我们可以从高阶和低阶两个层次考虑：

* **高阶集合：** Dask提供了高阶的Array，Bag和DataFrame, 它们模仿了NumPy，List和Pandas，但可以在不适合主内存的数据集上并行操作。 
    Dask的高阶集合是NumPy和Pandas在大型数据集的替代品。
* **低阶计划程序：** Dask提供了动态任务计划程序，可并行执行任务图。 这些执行引擎为上述高级集合提供支持，但也可以为用户定义的自定义工作负载提供支持。 这些调度程序的等待时间很短（大约1毫秒），并且努力在较小的内存占用空间中运行计算。 Dask的调度程序是在复杂情况或其他任务调度系统（如`Luigi`或`IPython parallel`）中直接使用`threading`或`multiprocessing`库的替代方法。


不同的用户在不同的级别上进行操作，但了解两者都有帮助。 本教程将在`dask.array`和`dask.dataframe`的高阶使用（偶数章节）和dask图和调度程序的低阶使用（奇数章节）之间进行交错。

## 准备

1. 你需要 clone 这个仓库

    `原版`
    git clone http://github.com/dask/dask-tutorial   
    `汉化`
    git clone https://github.com/IncubatorShokuhou/dask-tutorial-chinese

然后安装必要的包。
有三种方法可以安装这些包。选择最适合你的方法。
他们分别是（按推荐顺序）: 

#### 2a) 创建一个conda环境 (推荐)

在仓库主目录   

    conda env create -f binder/environment.yml 
    conda activate dask-tutorial
    jupyter labextension install @jupyter-widgets/jupyterlab-manager
    jupyter labextension install @bokeh/jupyter_bokeh

#### 2b) 在一个已有的环境中安装

您将需要以下核心库

    conda install numpy pandas h5py pillow matplotlib scipy toolz pytables snakeviz scikit-image dask distributed -c conda-forge

您可能会发现以下库对某些练习很有帮助

    conda install python-graphviz -c conda-forge
    
请注意，此选项将更改您的现有环境，可能会更改您已经安装的软件包的版本。
    
#### 2c) 使用 Dockerfile

您可以从提供的Dockerfile中构建Docker映像。

    $ docker build . # This will build using the same env as in a)

运行一个容器，将ID替换为先前命令的输出值

    $ docker run -it -p 8888:8888 -p 8787:8787 <container_id_or_tag>

上述命令会生成一个链接(`例如 http://(container_id or 127.0.0.1):8888/?token=<sometoken>`) ，可用于从浏览器访问notebook。 您可能需要用`localhost`或`127.0.0.1`替换给定的hostname。  

**你只需要执行上述选项中的一个!**

### 启动 notebook

从仓库目录执行  

    jupyter notebook 

或

    jupyter lab

该步骤已在选项 c) 中执行，不需要再重复。

## 链接

*  参考
    *  [Docs](https://dask.org/)
    *  [Examples](https://examples.dask.org/)
    *  [Code](https://github.com/dask/dask/)
    *  [Blog](https://blog.dask.org/)
*  寻求帮助
    *   [`dask`](http://stackoverflow.com/questions/tagged/dask) tag on Stack Overflow, for usage questions
    *   [github issues](https://github.com/dask/dask/issues/new) for bug reports and feature requests
    *   [gitter chat](https://gitter.im/dask/dask) for general, non-bug, discussion
    *   Attend a live tutorial

## 大纲

0. [Overview](00_overview.ipynb) - dask在宇宙中的位置

1. [Delayed](01_dask.delayed.ipynb) - 通过单一函数方法并行化一般Python代码.

1x. [Lazy](01x_lazy.ipynb) - lazy执行背后的一些原则(供感兴趣的人参考)。

2. [Bag](02_bag.ipynb) - 第一个高级集合：一个通用的迭代器，使用函数式编程风格和清理混乱的数据
 
3. [Array](03_array.ipynb) - 分块化的numpy风格，实现一组分布在不同集群的numpy数组.

7. [Dataframe](04_dataframe.ipynb) - 对分布在集群中的许多pandas dataframe进行并行化操作。

5. [Distributed](05_distributed.ipynb) - Dask的集群调度程序，以及关于如何查看UI的详细信息。

6. [Advanced Distributed](06_distributed_advanced.ipynb) - 关于分布式计算的更多细节，包括如何调试。

7. [Dataframe Storage](07_dataframe_storage.ipynb) - 读写dataframe到磁盘的有效方法。

8. [Machine Learning](08_machine_learning.ipynb) - 将dask应用到机器学习问题
