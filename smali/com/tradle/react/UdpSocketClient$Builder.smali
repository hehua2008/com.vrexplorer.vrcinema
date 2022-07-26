.class public Lcom/tradle/react/UdpSocketClient$Builder;
.super Ljava/lang/Object;
.source "UdpSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tradle/react/UdpSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private exceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

.field private receiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

.field private reuse:Z


# direct methods
.method public constructor <init>(Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;)V
    .locals 1
    .param p1, "receiverListener"    # Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;
    .param p2, "exceptionListener"    # Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tradle/react/UdpSocketClient$Builder;->reuse:Z

    .line 255
    iput-object p1, p0, Lcom/tradle/react/UdpSocketClient$Builder;->receiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

    .line 256
    iput-object p2, p0, Lcom/tradle/react/UdpSocketClient$Builder;->exceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/tradle/react/UdpSocketClient$Builder;)Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSocketClient$Builder;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient$Builder;->receiverListener:Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tradle/react/UdpSocketClient$Builder;)Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSocketClient$Builder;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tradle/react/UdpSocketClient$Builder;->exceptionListener:Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tradle/react/UdpSocketClient$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tradle/react/UdpSocketClient$Builder;

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/tradle/react/UdpSocketClient$Builder;->reuse:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/tradle/react/UdpSocketClient;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lcom/tradle/react/UdpSocketClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tradle/react/UdpSocketClient;-><init>(Lcom/tradle/react/UdpSocketClient$Builder;Lcom/tradle/react/UdpSocketClient$1;)V

    return-object v0
.end method

.method public reuseAddress(Z)Lcom/tradle/react/UdpSocketClient$Builder;
    .locals 0
    .param p1, "reuse"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/tradle/react/UdpSocketClient$Builder;->reuse:Z

    .line 261
    return-object p0
.end method
