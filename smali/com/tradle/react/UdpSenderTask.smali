.class public Lcom/tradle/react/UdpSenderTask;
.super Landroid/os/AsyncTask;
.source "UdpSenderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tradle/react/UdpSenderTask$OnDataSentListener;,
        Lcom/tradle/react/UdpSenderTask$SenderPacket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tradle/react/UdpSenderTask$SenderPacket;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UdpSenderTask"


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tradle/react/UdpSenderTask$OnDataSentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;Lcom/tradle/react/UdpSenderTask$OnDataSentListener;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "listener"    # Lcom/tradle/react/UdpSenderTask$OnDataSentListener;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tradle/react/UdpSenderTask;->mSocket:Ljava/net/DatagramSocket;

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tradle/react/UdpSenderTask;->mListener:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lcom/tradle/react/UdpSenderTask$SenderPacket;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSenderTask;->doInBackground([Lcom/tradle/react/UdpSenderTask$SenderPacket;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/tradle/react/UdpSenderTask$SenderPacket;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Lcom/tradle/react/UdpSenderTask$SenderPacket;

    .prologue
    .line 34
    iget-object v4, p0, Lcom/tradle/react/UdpSenderTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tradle/react/UdpSenderTask$OnDataSentListener;

    .line 37
    .local v1, "listener":Lcom/tradle/react/UdpSenderTask$OnDataSentListener;
    const/4 v4, 0x0

    :try_start_0
    aget-object v2, p1, v4

    .line 38
    .local v2, "packet":Lcom/tradle/react/UdpSenderTask$SenderPacket;
    iget-object v4, p0, Lcom/tradle/react/UdpSenderTask;->mSocket:Ljava/net/DatagramSocket;

    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v6, v2, Lcom/tradle/react/UdpSenderTask$SenderPacket;->data:[B

    iget-object v7, v2, Lcom/tradle/react/UdpSenderTask$SenderPacket;->data:[B

    array-length v7, v7

    iget-object v8, v2, Lcom/tradle/react/UdpSenderTask$SenderPacket;->socketAddress:Ljava/net/SocketAddress;

    invoke-direct {v5, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1, p0}, Lcom/tradle/react/UdpSenderTask$OnDataSentListener;->onDataSent(Lcom/tradle/react/UdpSenderTask;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v2    # "packet":Lcom/tradle/react/UdpSenderTask$SenderPacket;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p0, v4}, Lcom/tradle/react/UdpSenderTask$OnDataSentListener;->onDataSentError(Lcom/tradle/react/UdpSenderTask;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 48
    .local v3, "rte":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v1, p0, v3}, Lcom/tradle/react/UdpSenderTask$OnDataSentListener;->onDataSentRuntimeException(Lcom/tradle/react/UdpSenderTask;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
