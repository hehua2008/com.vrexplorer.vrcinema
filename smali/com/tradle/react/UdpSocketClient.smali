.class public final Lcom/tradle/react/UdpSocketClient;
.super Ljava/lang/Object;
.source "UdpSocketClient.java"

# interfaces
.implements Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;
.implements Lcom/tradle/react/UdpSenderTask$OnDataSentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;,
        Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;,
        Lcom/tradle/react/UdpSocketClient$Builder;
    }
.end annotation


# instance fields
.field private final mExceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

.field private mIsMulticastSocket:Z

.field private final mPendingSends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tradle/react/UdpSenderTask;",
            "Lcom/facebook/react/bridge/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

.field private mReceiverTask:Lcom/tradle/react/UdpReceiverTask;

.field private final mReuseAddress:Z

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method private constructor <init>(Lcom/tradle/react/UdpSocketClient$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/tradle/react/UdpSocketClient$Builder;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tradle/react/UdpSocketClient;->mIsMulticastSocket:Z

    .line 45
    invoke-static {p1}, Lcom/tradle/react/UdpSocketClient$Builder;->access$000(Lcom/tradle/react/UdpSocketClient$Builder;)Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

    .line 46
    invoke-static {p1}, Lcom/tradle/react/UdpSocketClient$Builder;->access$100(Lcom/tradle/react/UdpSocketClient$Builder;)Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mExceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    .line 47
    invoke-static {p1}, Lcom/tradle/react/UdpSocketClient$Builder;->access$200(Lcom/tradle/react/UdpSocketClient$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tradle/react/UdpSocketClient;->mReuseAddress:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/tradle/react/UdpSocketClient$Builder;Lcom/tradle/react/UdpSocketClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tradle/react/UdpSocketClient$Builder;
    .param p2, "x1"    # Lcom/tradle/react/UdpSocketClient$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/tradle/react/UdpSocketClient;-><init>(Lcom/tradle/react/UdpSocketClient$Builder;)V

    return-void
.end method


# virtual methods
.method public addMembership(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket is not bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tradle/react/UdpSocketClient;->mIsMulticastSocket:Z

    .line 107
    return-void
.end method

.method public bind(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7
    .param p1, "port"    # Ljava/lang/Integer;
    .param p2, "address"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    .line 74
    new-instance v1, Lcom/tradle/react/UdpReceiverTask;

    invoke-direct {v1}, Lcom/tradle/react/UdpReceiverTask;-><init>()V

    iput-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverTask:Lcom/tradle/react/UdpReceiverTask;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 83
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    iget-boolean v2, p0, Lcom/tradle/react/UdpSocketClient;->mReuseAddress:Z

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 84
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 87
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverTask:Lcom/tradle/react/UdpReceiverTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v5, v6, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tradle/react/UdpReceiverTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void

    .line 80
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .restart local v0    # "socketAddress":Ljava/net/SocketAddress;
    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverTask:Lcom/tradle/react/UdpReceiverTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverTask:Lcom/tradle/react/UdpReceiverTask;

    invoke-virtual {v0}, Lcom/tradle/react/UdpReceiverTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverTask:Lcom/tradle/react/UdpReceiverTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tradle/react/UdpReceiverTask;->cancel(Z)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    .line 177
    :cond_1
    return-void
.end method

.method public didReceiveData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;->didReceiveData(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public didReceiveError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mReceiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

    invoke-interface {v0, p0, p1}, Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;->didReceiveError(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public didReceiveRuntimeException(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mExceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    invoke-interface {v0, p1}, Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;->didReceiveException(Ljava/lang/RuntimeException;)V

    .line 201
    return-void
.end method

.method public dropMembership(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tradle/react/UdpSocketClient;->mIsMulticastSocket:Z

    .line 119
    return-void
.end method

.method public isMulticast()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tradle/react/UdpSocketClient;->mIsMulticastSocket:Z

    return v0
.end method

.method public onDataSent(Lcom/tradle/react/UdpSenderTask;)V
    .locals 3
    .param p1, "task"    # Lcom/tradle/react/UdpSenderTask;

    .prologue
    .line 210
    iget-object v2, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/Callback;

    .line 212
    .local v0, "callback":Lcom/facebook/react/bridge/Callback;
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 218
    :cond_0
    return-void

    .line 213
    .end local v0    # "callback":Lcom/facebook/react/bridge/Callback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDataSentError(Lcom/tradle/react/UdpSenderTask;Ljava/lang/String;)V
    .locals 4
    .param p1, "task"    # Lcom/tradle/react/UdpSenderTask;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v2, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/Callback;

    .line 229
    .local v0, "callback":Lcom/facebook/react/bridge/Callback;
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, p2}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-void

    .line 230
    .end local v0    # "callback":Lcom/facebook/react/bridge/Callback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDataSentRuntimeException(Lcom/tradle/react/UdpSenderTask;Ljava/lang/RuntimeException;)V
    .locals 2
    .param p1, "task"    # Lcom/tradle/react/UdpSenderTask;
    .param p2, "exception"    # Ljava/lang/RuntimeException;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mExceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    invoke-interface {v0, p2}, Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;->didReceiveException(Ljava/lang/RuntimeException;)V

    .line 243
    iget-object v1, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "base64String"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/Integer;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/facebook/react/bridge/Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v3, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Socket is not bound."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :cond_1
    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 140
    .local v0, "data":[B
    new-instance v2, Lcom/tradle/react/UdpSenderTask;

    iget-object v3, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v2, v3, p0}, Lcom/tradle/react/UdpSenderTask;-><init>(Ljava/net/DatagramSocket;Lcom/tradle/react/UdpSenderTask$OnDataSentListener;)V

    .line 141
    .local v2, "task":Lcom/tradle/react/UdpSenderTask;
    new-instance v1, Lcom/tradle/react/UdpSenderTask$SenderPacket;

    invoke-direct {v1}, Lcom/tradle/react/UdpSenderTask$SenderPacket;-><init>()V

    .line 142
    .local v1, "packet":Lcom/tradle/react/UdpSenderTask$SenderPacket;
    iput-object v0, v1, Lcom/tradle/react/UdpSenderTask$SenderPacket;->data:[B

    .line 143
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v1, Lcom/tradle/react/UdpSenderTask$SenderPacket;->socketAddress:Ljava/net/SocketAddress;

    .line 145
    if-eqz p4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    monitor-enter v4

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/tradle/react/UdpSocketClient;->mPendingSends:Ljava/util/Map;

    invoke-interface {v3, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/tradle/react/UdpSenderTask$SenderPacket;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/tradle/react/UdpSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void

    .line 148
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setBroadcast(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 161
    :cond_0
    return-void
.end method
