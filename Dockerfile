# Using Jupyter Data Science Notebook Image
FROM jupyter/datascience-notebook

# Copying the directory contents into the container
COPY . /container

# Setting Working Directory
WORKDIR /container

# Installing required packages
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib
RUN pip install seaborn

# Making port 8888 available
EXPOSE 8888

# Setting the file to run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]