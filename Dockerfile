FROM alpine:3.4

COPY data_export.config /root/
ENV DataExportDir /root/DataExport

RUN apk --no-cache add ca-certificates python py-pip \
    && update-ca-certificates \
    && pip install virtualenv \
    && mkdir -p /root/DataExport \
    && virtualenv --python=/usr/bin/python2.7 ${DataExportDir} \
    && ${DataExportDir}/bin/pip install -r https://s3.amazonaws.com/awsma-public/AWSMobileAnalyticsDataExport/1.0/latest/requirements.txt \
     https://s3.amazonaws.com/awsma-public/AWSMobileAnalyticsDataExport/1.0/latest/AWSMobileAnalyticsDataExport.tar.gz \
    && mkdir ${DataExportDir}/logs 

CMD ["/root/DataExport/bin/loadevents"]
