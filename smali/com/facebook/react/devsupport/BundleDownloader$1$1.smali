.class Lcom/facebook/react/devsupport/BundleDownloader$1$1;
.super Ljava/lang/Object;
.source "BundleDownloader.java"

# interfaces
.implements Lcom/facebook/react/devsupport/MultipartStreamReader$ChunkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/BundleDownloader$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/BundleDownloader$1;

.field final synthetic val$response:Lokhttp3/Response;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/BundleDownloader$1;Lokhttp3/Response;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/devsupport/BundleDownloader$1;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->this$1:Lcom/facebook/react/devsupport/BundleDownloader$1;

    iput-object p2, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->val$response:Lokhttp3/Response;

    iput-object p3, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Map;Lokio/Buffer;Z)V
    .locals 10
    .param p2, "body"    # Lokio/Buffer;
    .param p3, "finished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/Buffer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    .line 102
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->val$response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    .line 103
    .local v2, "status":I
    const-string v0, "X-Http-Status"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "X-Http-Status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->this$1:Lcom/facebook/react/devsupport/BundleDownloader$1;

    iget-object v0, v0, Lcom/facebook/react/devsupport/BundleDownloader$1;->this$0:Lcom/facebook/react/devsupport/BundleDownloader;

    iget-object v1, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->this$1:Lcom/facebook/react/devsupport/BundleDownloader$1;

    iget-object v4, v3, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$outputFile:Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->this$1:Lcom/facebook/react/devsupport/BundleDownloader$1;

    iget-object v5, v3, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/devsupport/BundleDownloader;->access$100(Lcom/facebook/react/devsupport/BundleDownloader;Ljava/lang/String;ILokio/BufferedSource;Ljava/io/File;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)V

    .line 130
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v8, "progress":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 114
    .local v2, "status":Ljava/lang/String;
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_3
    const/4 v6, 0x0

    .line 118
    .local v6, "done":Ljava/lang/Integer;
    const-string v0, "done"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    const-string v0, "done"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 121
    :cond_4
    const/4 v9, 0x0

    .line 122
    .local v9, "total":Ljava/lang/Integer;
    const-string v0, "total"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    const-string v0, "total"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/facebook/react/devsupport/BundleDownloader$1$1;->this$1:Lcom/facebook/react/devsupport/BundleDownloader$1;

    iget-object v0, v0, Lcom/facebook/react/devsupport/BundleDownloader$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    invoke-interface {v0, v2, v6, v9}, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;->onProgress(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v2    # "status":Ljava/lang/String;
    .end local v6    # "done":Ljava/lang/Integer;
    .end local v8    # "progress":Lorg/json/JSONObject;
    .end local v9    # "total":Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 127
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "ReactNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing progress JSON. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
