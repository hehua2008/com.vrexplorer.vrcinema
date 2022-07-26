.class public final Lcom/tradle/react/UdpSockets;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "UdpSockets.java"

# interfaces
.implements Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;
.implements Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UdpSockets"


# instance fields
.field private mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tradle/react/UdpSocketClient;",
            ">;"
        }
    .end annotation
.end field

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mShuttingDown:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tradle/react/UdpSockets;->mClients:Landroid/util/SparseArray;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tradle/react/UdpSockets;->mShuttingDown:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSockets;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tradle/react/UdpSockets;->mClients:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tradle/react/UdpSockets;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSockets;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tradle/react/UdpSockets;->findClient(Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSockets;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tradle/react/UdpSockets;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tradle/react/UdpSockets;Landroid/net/wifi/WifiManager$MulticastLock;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 0
    .param p0, "x0"    # Lcom/tradle/react/UdpSockets;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager$MulticastLock;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tradle/react/UdpSockets;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tradle/react/UdpSockets;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSockets;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/tradle/react/UdpSockets;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSockets;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method private findClient(Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;
    .locals 6
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    const/4 v5, 0x0

    .line 87
    iget-object v1, p0, Lcom/tradle/react/UdpSockets;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tradle/react/UdpSocketClient;

    .line 88
    .local v0, "client":Lcom/tradle/react/UdpSocketClient;
    if-nez v0, :cond_0

    .line 89
    if-nez p2, :cond_1

    .line 90
    const-string v1, "UdpSockets"

    const-string v2, "missing callback parameter."

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no client found with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addMembership(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "multicastAddress"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/tradle/react/UdpSockets$4;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tradle/react/UdpSockets$4;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 203
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    return-void
.end method

.method public bind(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "port"    # Ljava/lang/Integer;
    .param p3, "address"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/tradle/react/UdpSockets$3;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tradle/react/UdpSockets$3;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;Ljava/lang/Integer;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method public close(Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/tradle/react/UdpSockets$7;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tradle/react/UdpSockets$7;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 288
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method public createSocket(Ljava/lang/Integer;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/tradle/react/UdpSockets$2;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tradle/react/UdpSockets$2;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public didReceiveData(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "socket"    # Lcom/tradle/react/UdpSocketClient;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 319
    new-instance v0, Lcom/tradle/react/UdpSockets$9;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tradle/react/UdpSockets$9;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 345
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 346
    return-void
.end method

.method public didReceiveError(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/tradle/react/UdpSocketClient;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "UdpSockets"

    invoke-static {v0, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public didReceiveException(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->handleException(Ljava/lang/RuntimeException;)V

    .line 362
    return-void
.end method

.method public dropMembership(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "multicastAddress"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/tradle/react/UdpSockets$5;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tradle/react/UdpSockets$5;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 230
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "UdpSockets"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tradle/react/UdpSockets;->mShuttingDown:Z

    .line 55
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 4

    .prologue
    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tradle/react/UdpSockets;->mShuttingDown:Z

    .line 63
    :try_start_0
    new-instance v2, Lcom/tradle/react/UdpSockets$1;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tradle/react/UdpSockets$1;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 75
    invoke-virtual {v2, v3}, Lcom/tradle/react/UdpSockets$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "ioe":Ljava/lang/InterruptedException;
    const-string v2, "UdpSockets"

    const-string v3, "onCatalystInstanceDestroy"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v1    # "ioe":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    const-string v2, "UdpSockets"

    const-string v3, "onCatalystInstanceDestroy"

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public send(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "base64String"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/Integer;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/tradle/react/UdpSockets$6;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tradle/react/UdpSockets$6;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 258
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    return-void
.end method

.method public setBroadcast(Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "cId"    # Ljava/lang/Integer;
    .param p2, "flag"    # Ljava/lang/Boolean;
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/tradle/react/UdpSockets$8;

    invoke-virtual {p0}, Lcom/tradle/react/UdpSockets;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tradle/react/UdpSockets$8;-><init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 311
    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpSockets$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    return-void
.end method
