.class public Lcom/tradle/react/UdpSenderTask$SenderPacket;
.super Ljava/lang/Object;
.source "UdpSenderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tradle/react/UdpSenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderPacket"
.end annotation


# instance fields
.field data:[B

.field socketAddress:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
