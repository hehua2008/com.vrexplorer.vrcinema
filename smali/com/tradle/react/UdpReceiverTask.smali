.class public Lcom/tradle/react/UdpReceiverTask;
.super Landroid/os/AsyncTask;
.source "UdpReceiverTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/net/DatagramSocket;",
        "Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_UDP_DATAGRAM_LEN:I = 0x400

.field private static final TAG:Ljava/lang/String; = "UdpReceiverTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpReceiverTask;->doInBackground([Landroid/util/Pair;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/Pair;)Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/DatagramSocket;",
            "Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/net/DatagramSocket;Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;>;"
    const/4 v12, 0x0

    .line 33
    array-length v8, p1

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 34
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "This task is only for a single socket/listener pair."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 37
    :cond_0
    aget-object v8, p1, v12

    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/net/DatagramSocket;

    .line 38
    .local v7, "socket":Ljava/net/DatagramSocket;
    aget-object v8, p1, v12

    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;

    .line 40
    .local v5, "receiverListener":Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 41
    .local v2, "buffer":[B
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v8, v2

    invoke-direct {v4, v2, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 43
    .local v4, "packet":Ljava/net/DatagramPacket;
    :goto_0
    invoke-virtual {p0}, Lcom/tradle/react/UdpReceiverTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 45
    :try_start_0
    invoke-virtual {v7, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 47
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 48
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v9

    .line 49
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    const/4 v11, 0x2

    .line 48
    invoke-static {v8, v9, v10, v11}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "base64Data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-interface {v5, v1, v8, v9}, Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;->didReceiveData(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 51
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "base64Data":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 52
    .local v3, "ioe":Ljava/io/IOException;
    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;->didReceiveError(Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-virtual {p0, v12}, Lcom/tradle/react/UdpReceiverTask;->cancel(Z)Z

    goto :goto_0

    .line 56
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 57
    .local v6, "rte":Ljava/lang/RuntimeException;
    if-eqz v5, :cond_2

    .line 58
    invoke-interface {v5, v6}, Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;->didReceiveRuntimeException(Ljava/lang/RuntimeException;)V

    .line 60
    :cond_2
    invoke-virtual {p0, v12}, Lcom/tradle/react/UdpReceiverTask;->cancel(Z)Z

    goto :goto_0

    .line 64
    .end local v6    # "rte":Ljava/lang/RuntimeException;
    :cond_3
    const/4 v8, 0x0

    return-object v8
.end method
