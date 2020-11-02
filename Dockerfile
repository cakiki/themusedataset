FROM jupyter/base-notebook:latest

RUN pip install pandas nltk scikit-learn seaborn spotipy pylast facets-overview pip install beautifulsoup4

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888","--NotebookApp.iopub_data_rate_limit=10000000","--no-browser", "--ip=0.0.0.0"]