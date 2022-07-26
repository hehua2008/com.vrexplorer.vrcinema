.class public Lcom/facebook/react/devsupport/BundleDownloader;
.super Ljava/lang/Object;
.source "BundleDownloader.java"


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;

.field private mDownloadBundleFromURLCall:Lokhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mClient:Lokhttp3/OkHttpClient;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/BundleDownloader;)Lokhttp3/Call;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    return-object v0
.end method

.method static synthetic access$002(Lcom/facebook/react/devsupport/BundleDownloader;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;
    .param p1, "x1"    # Lokhttp3/Call;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/BundleDownloader;Ljava/lang/String;ILokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/BundleDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lokio/BufferedSource;
    .param p4, "x4"    # Ljava/io/File;
    .param p5, "x5"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/devsupport/BundleDownloader;->processBundleResult(Ljava/lang/String;ILokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V

    return-void
.end method

.method private processBundleResult(Ljava/lang/String;ILokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "body"    # Lokio/BufferedSource;
    .param p4, "outputFile"    # Ljava/io/File;
    .param p5, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/16 v4, 0xc8

    if-eq p2, v4, :cond_2

    .line 160
    invoke-interface {p3}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "bodyString":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/react/common/DebugServerException;->parse(Ljava/lang/String;)Lcom/facebook/react/common/DebugServerException;

    move-result-object v1

    .line 162
    .local v1, "debugServerException":Lcom/facebook/react/common/DebugServerException;
    if-eqz v1, :cond_1

    .line 163
    invoke-interface {p5, v1}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onFailure(Ljava/lang/Exception;)V

    .line 185
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v1    # "debugServerException":Lcom/facebook/react/common/DebugServerException;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0    # "bodyString":Ljava/lang/String;
    .restart local v1    # "debugServerException":Lcom/facebook/react/common/DebugServerException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "The development server returned response error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "URL: "

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Body:\n"

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v4, Lcom/facebook/react/common/DebugServerException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/common/DebugServerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v4}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 175
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v1    # "debugServerException":Lcom/facebook/react/common/DebugServerException;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v2, 0x0

    .line 177
    .local v2, "output":Lokio/Sink;
    :try_start_0
    invoke-static {p4}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    .line 178
    invoke-interface {p3, v2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 179
    invoke-interface {p5}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v2}, Lokio/Sink;->close()V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 182
    invoke-interface {v2}, Lokio/Sink;->close()V

    :cond_3
    throw v4
.end method


# virtual methods
.method public cancelDownloadBundleFromURL()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    .line 150
    :cond_0
    return-void
.end method

.method public downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "bundleURL"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 53
    invoke-virtual {v1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 59
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    iput-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    .line 60
    iget-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader;->mDownloadBundleFromURLCall:Lokhttp3/Call;

    new-instance v2, Lcom/facebook/react/devsupport/BundleDownloader$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/react/devsupport/BundleDownloader$1;-><init>(Lcom/facebook/react/devsupport/BundleDownloader;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 143
    return-void
.end method
