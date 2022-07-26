.class public Lcom/facebook/stetho/okhttp3/StethoInterceptor;
.super Ljava/lang/Object;
.source "StethoInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/okhttp3/StethoInterceptor$ForwardingResponseBody;,
        Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorResponse;,
        Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorRequest;
    }
.end annotation


# instance fields
.field private final mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/facebook/stetho/inspector/network/NetworkEventReporterImpl;->get()Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 16
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->nextRequestId()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "requestId":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v12

    .line 46
    .local v12, "request":Lokhttp3/Request;
    const/4 v13, 0x0

    .line 47
    .local v13, "requestBodyHelper":Lcom/facebook/stetho/inspector/network/RequestBodyHelper;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v13, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;

    .end local v13    # "requestBodyHelper":Lcom/facebook/stetho/inspector/network/RequestBodyHelper;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-direct {v13, v1, v2}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;-><init>(Lcom/facebook/stetho/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    .line 49
    .restart local v13    # "requestBodyHelper":Lcom/facebook/stetho/inspector/network/RequestBodyHelper;
    new-instance v11, Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorRequest;

    invoke-direct {v11, v2, v12, v13}, Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorRequest;-><init>(Ljava/lang/String;Lokhttp3/Request;Lcom/facebook/stetho/inspector/network/RequestBodyHelper;)V

    .line 51
    .local v11, "inspectorRequest":Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1, v11}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->requestWillBeSent(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequest;)V

    .line 56
    .end local v11    # "inspectorRequest":Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorRequest;
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 64
    .local v14, "response":Lokhttp3/Response;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v13}, Lcom/facebook/stetho/inspector/network/RequestBodyHelper;->reportDataSent()V

    .line 69
    :cond_1
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v8

    .line 70
    .local v8, "connection":Lokhttp3/Connection;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    new-instance v3, Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorResponse;

    invoke-direct {v3, v2, v12, v14, v8}, Lcom/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorResponse;-><init>(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Connection;)V

    invoke-interface {v1, v3}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->responseHeadersReceived(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponse;)V

    .line 77
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    .line 78
    .local v7, "body":Lokhttp3/ResponseBody;
    const/4 v9, 0x0

    .line 79
    .local v9, "contentType":Lokhttp3/MediaType;
    const/4 v5, 0x0

    .line 80
    .local v5, "responseStream":Ljava/io/InputStream;
    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    .line 82
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 85
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    if-eqz v9, :cond_5

    .line 87
    invoke-virtual {v9}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "Content-Encoding"

    .line 88
    invoke-virtual {v14, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/facebook/stetho/inspector/network/DefaultResponseHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-direct {v6, v15, v2}, Lcom/facebook/stetho/inspector/network/DefaultResponseHandler;-><init>(Lcom/facebook/stetho/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    .line 85
    invoke-interface/range {v1 .. v6}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/facebook/stetho/inspector/network/ResponseHandler;)Ljava/io/InputStream;

    move-result-object v5

    .line 91
    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {v14}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v3, Lcom/facebook/stetho/okhttp3/StethoInterceptor$ForwardingResponseBody;

    invoke-direct {v3, v7, v5}, Lcom/facebook/stetho/okhttp3/StethoInterceptor$ForwardingResponseBody;-><init>(Lokhttp3/ResponseBody;Ljava/io/InputStream;)V

    .line 93
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    .line 98
    .end local v5    # "responseStream":Ljava/io/InputStream;
    .end local v7    # "body":Lokhttp3/ResponseBody;
    .end local v8    # "connection":Lokhttp3/Connection;
    .end local v9    # "contentType":Lokhttp3/MediaType;
    :cond_3
    return-object v14

    .line 57
    .end local v14    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v10

    .line 58
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-interface {v1}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/stetho/okhttp3/StethoInterceptor;->mEventReporter:Lcom/facebook/stetho/inspector/network/NetworkEventReporter;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/stetho/inspector/network/NetworkEventReporter;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    throw v10

    .line 87
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "responseStream":Ljava/io/InputStream;
    .restart local v7    # "body":Lokhttp3/ResponseBody;
    .restart local v8    # "connection":Lokhttp3/Connection;
    .restart local v9    # "contentType":Lokhttp3/MediaType;
    .restart local v14    # "response":Lokhttp3/Response;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method
