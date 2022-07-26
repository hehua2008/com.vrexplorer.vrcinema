.class Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;
.super Lokhttp3/WebSocketListener;
.source "InspectorPackagerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/InspectorPackagerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# static fields
.field private static final RECONNECT_DELAY_MS:I = 0x7d0


# instance fields
.field private mClosed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mSuppressConnectionErrors:Z

.field private final mUrl:Ljava/lang/String;

.field private mWebSocket:Lokhttp3/WebSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;


# direct methods
.method public constructor <init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;)V
    .locals 2
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mUrl:Ljava/lang/String;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHandler:Landroid/os/Handler;

    .line 188
    return-void
.end method

.method private abort(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 290
    const-string v0, "InspectorPackagerConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred, shutting down websocket connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->closeAllConnections()V

    .line 292
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->closeWebSocketQuietly()V

    .line 293
    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    return v0
.end method

.method private closeWebSocketQuietly()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    const/16 v1, 0x3e8

    const-string v2, "End of session"

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    .line 304
    :cond_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reconnect()V
    .locals 4

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t reconnect closed client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mSuppressConnectionErrors:Z

    if-nez v0, :cond_1

    .line 244
    const-string v0, "InspectorPackagerConnection"

    const-string v1, "Couldn\'t connect to packager, will silently retry"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mSuppressConnectionErrors:Z

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$1;-><init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    .line 262
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    const/16 v1, 0x3e8

    const-string v2, "End of session"

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    .line 270
    :cond_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 224
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-eqz v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t connect closed client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    .line 228
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 229
    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 230
    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 231
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 235
    :cond_1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 236
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0, p0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    .line 237
    return-void
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    .line 217
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->closeAllConnections()V

    .line 218
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->reconnect()V

    .line 221
    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lokhttp3/Response;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Websocket exception"

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-nez v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->reconnect()V

    .line 203
    :cond_1
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 3
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->handleProxyMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    .line 193
    return-void
.end method

.method public send(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 273
    new-instance v0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;-><init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;Lorg/json/JSONObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lokhttp3/WebSocket;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    aput-object v3, v1, v2

    .line 286
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    return-void
.end method
