.class public Lcom/facebook/react/modules/websocket/WebSocketModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "WebSocketModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    hasConstants = false
    name = "WebSocketModule"
.end annotation


# instance fields
.field private mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

.field private mReactContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mWebSocketConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/WebSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 56
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/websocket/WebSocketModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/websocket/WebSocketModule;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/websocket/WebSocketModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/websocket/WebSocketModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/modules/websocket/WebSocketModule;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/websocket/WebSocketModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->notifyWebSocketFailed(ILjava/lang/String;)V

    return-void
.end method

.method private getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 288
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-static {p1}, Lcom/facebook/react/modules/websocket/WebSocketModule;->getDefaultOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "origin":Ljava/net/URI;
    iget-object v4, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 290
    .local v1, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v4, "Cookie"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 292
    .local v0, "cookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    :cond_0
    const/4 v4, 0x0

    .line 296
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 297
    .end local v0    # "cookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "origin":Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get cookie from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static getDefaultOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    const-string v3, ""

    .line 255
    .local v3, "scheme":Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "requestURI":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 265
    const-string v4, "%s://%s:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    .line 268
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 269
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 265
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "defaultOrigin":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 258
    .end local v0    # "defaultOrigin":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ws"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 271
    :cond_4
    const-string v4, "%s://%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "defaultOrigin":Ljava/lang/String;
    goto :goto_1

    .line 275
    .end local v0    # "defaultOrigin":Ljava/lang/String;
    .end local v2    # "requestURI":Ljava/net/URI;
    .end local v3    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as default origin header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private notifyWebSocketFailed(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 238
    .local v0, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "websocketFailed"

    invoke-direct {p0, v1, v0}, Lcom/facebook/react/modules/websocket/WebSocketModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 241
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 61
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 62
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;I)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 178
    .local v0, "client":Lokhttp3/WebSocket;
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 185
    iget-object v2, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ReactNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not close WebSocket connection for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;I)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocols"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "headers"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 76
    new-instance v10, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v10}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v12, 0xa

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    invoke-virtual {v10, v12, v13, v11}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v10

    const-wide/16 v12, 0xa

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    invoke-virtual {v10, v12, v13, v11}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v10

    const-wide/16 v12, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 79
    invoke-virtual {v10, v12, v13, v11}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v10

    .line 80
    invoke-virtual {v10}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 82
    .local v3, "client":Lokhttp3/OkHttpClient;
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 83
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v10

    .line 84
    invoke-virtual {v10, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 86
    .local v2, "builder":Lokhttp3/Request$Builder;
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/websocket/WebSocketModule;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "cookie":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 88
    const-string v10, "Cookie"

    invoke-virtual {v2, v10, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 91
    :cond_0
    if-eqz p3, :cond_3

    .line 92
    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v6

    .line 94
    .local v6, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    const-string v10, "origin"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 95
    const-string v10, "origin"

    invoke-static {p1}, Lcom/facebook/react/modules/websocket/WebSocketModule;->getDefaultOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 98
    :cond_1
    :goto_0
    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 99
    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "key":Ljava/lang/String;
    sget-object v10, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 101
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 103
    :cond_2
    const-string v10, "ReactNative"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring: requested "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", value not a string"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v6    # "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    const-string v10, "origin"

    invoke-static {p1}, Lcom/facebook/react/modules/websocket/WebSocketModule;->getDefaultOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 112
    :cond_4
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v8, "protocolsValue":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 115
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "v":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 117
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    .end local v9    # "v":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const-string v12, ""

    invoke-virtual {v8, v10, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v10, "Sec-WebSocket-Protocol"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 127
    .end local v5    # "i":I
    .end local v8    # "protocolsValue":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    new-instance v11, Lcom/facebook/react/modules/websocket/WebSocketModule$1;

    move/from16 v0, p4

    invoke-direct {v11, p0, v0}, Lcom/facebook/react/modules/websocket/WebSocketModule$1;-><init>(Lcom/facebook/react/modules/websocket/WebSocketModule;I)V

    invoke-virtual {v3, v10, v11}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    .line 172
    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "WebSocketModule"

    return-object v0
.end method

.method public ping(I)V
    .locals 5
    .param p1, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 224
    iget-object v2, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 225
    .local v0, "client":Lokhttp3/WebSocket;
    if-nez v0, :cond_0

    .line 227
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot send a message. Unknown WebSocket id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_0
    :try_start_0
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {v0, v2}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->notifyWebSocketFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public send(Ljava/lang/String;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 196
    iget-object v2, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 197
    .local v0, "client":Lokhttp3/WebSocket;
    if-nez v0, :cond_0

    .line 199
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot send a message. Unknown WebSocket id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->notifyWebSocketFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendBinary(Ljava/lang/String;I)V
    .locals 5
    .param p1, "base64String"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 210
    iget-object v2, p0, Lcom/facebook/react/modules/websocket/WebSocketModule;->mWebSocketConnections:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 211
    .local v0, "client":Lokhttp3/WebSocket;
    if-nez v0, :cond_0

    .line 213
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot send a message. Unknown WebSocket id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    :try_start_0
    invoke-static {p1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    invoke-interface {v0, v2}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->notifyWebSocketFailed(ILjava/lang/String;)V

    goto :goto_0
.end method
