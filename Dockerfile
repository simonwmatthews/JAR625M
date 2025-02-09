FROM registry.gitlab.com/enki-portal/thermoengine:master
COPY week5_practical1.ipynb ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN pip install --no-cache-dir appmode==0.9.0 ipympl
RUN jupyter nbextension enable --py --sys-prefix appmode
RUN jupyter serverextension enable --py --sys-prefix appmode
USER ${NB_USER}
