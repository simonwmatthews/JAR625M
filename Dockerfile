FROM docker.io/simonwmatthews/pydew:v2.18
COPY Week5/* ${HOME}/Week5/
COPY Week6/* ${HOME}/Week6/
COPY Week9/* ${HOME}/Week9/
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN pip install --no-cache-dir appmode==0.9.0 ipympl
RUN jupyter nbextension enable --py --sys-prefix appmode
RUN jupyter serverextension enable --py --sys-prefix appmode
USER ${NB_USER}
