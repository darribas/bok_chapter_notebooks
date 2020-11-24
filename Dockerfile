FROM darribas/gds_py:5.0

# Local docs
RUN rm -R work/
RUN mkdir ${HOME}/content
COPY ./tl_2019_06_tract.* ${HOME}
COPY demo.ipynb ${HOME}

# Fix permissions
USER root
RUN fix-permissions ${HOME}
USER ${NB_USER}
