Inference-as-a-Service
=======================

The **Triton Inference Server** is a flexible and scalable platform designed to serve machine learning models in production. It supports multiple frameworks and deployment options, making it ideal for various inference workloads.

Technical details of the implementation on the EAF are described in https://doi.org/10.48550/arXiv.2312.06838.

Model Deployment
----------------

The Triton Inference Server is configured to automatically poll an S3-compatible object store for new or updated models. This object store is accessible at:

- **Object Store URL**: https://minio-eaf.fnal.gov

Uploading Models
~~~~~~~~~~~~~~~~

Models should be uploaded to the ``triton-models`` bucket in the standard Triton format. The standard format ensures that the server can correctly load and serve the models without any additional configuration.

Standard Triton Model Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Each model should be organized as follows:

.. code-block:: plaintext

   triton-models/
   └── your_model_name/
       ├── 1/
       │   └── model.onnx
       ├── config.pbtxt
       └── other_files_if_needed

- **Model Versioning**: Each version of the model should be placed in its own numbered directory (e.g., `1/`, `2/`, etc.).
- **Configuration File**: The `config.pbtxt` file is required to specify the model’s configuration, including input/output names, data types, and other runtime parameters.

Accessing the Object Store
~~~~~~~~~~~~~~~~~~~~~~~~~~

To upload models or manage existing ones, you'll need access to the `triton-models` bucket. If you do not yet have access, please contact the EAF administrators through the following link:

- **Request Access**: `ServiceNow <https://fermi.servicenowservices.com/wp/?id=evg-service-item&sys_id=2b7101261b58a950d03aec21f54bcb31>`_

Once access is granted, you'll be able to upload models directly via the MinIO web interface or using any S3-compatible client tools.

Endpoint Access
---------------

The inference server endpoint is available over GRPC with SSL encryption. You can access it at the following URL:

- **GRPC Endpoint**: `https://triton.fnal.gov`

Connecting to the Endpoint
~~~~~~~~~~~~~~~~~~~~~~~~~~

To connect to the inference server, ensure your client supports GRPC over SSL. The following is a general outline of how to establish a connection:

.. code-block:: python

   import grpc
   import tritonclient.grpc as grpcclient

   url = "triton.fnal.gov:443"
   ssl_options = grpc.ssl_channel_credentials()

   # Create a GRPC client
   client = grpcclient.InferenceServerClient(url=url, ssl=True, ssl_options=ssl_options)

   # Example usage: check if the server is live
   if client.is_server_live():
       print("Server is live!")


Monitoring
==========

A rich set of metrics is available to monitor the health and performance of the Triton Inference Server. This includes:

- **Inference Counts**
- **Queueing Time**
- **Number of Active Servers**

You can access the monitoring dashboard here:

- **Monitoring Dashboard**: https://lsvip.fnal.gov/monitor/goto/Lyl45vCIk?orgId=1

Logging
=======

Triton server logs are crucial for diagnosing issues and understanding the server's behavior. These logs can be accessed via the following link:

- **Log Access**: https://lsvip.fnal.gov/monitor/goto/_1MvcDCSk?orgId=1

Log Details
-----------

- **Error Logs**: In normal (non-verbose) mode, Triton typically only logs errors. If verbose mode is enabled, additional details may be logged, but this is not recommended for production due to the volume of data.
- **Log Ordering**: Logs may not be strictly time-ordered. This can require additional effort to correlate events, especially when troubleshooting complex issues.

