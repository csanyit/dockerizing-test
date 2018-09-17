FROM tensorflow/tensorflow
COPY ./XRAY_classifier/ /XRAY_classifier/
ENV TESTING False
CMD  python /XRAY_classifier/main.py --testing $TESTING --data_dir /input_data/
