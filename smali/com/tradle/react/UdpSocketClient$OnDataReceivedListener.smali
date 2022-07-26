.class public interface abstract Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;
.super Ljava/lang/Object;
.source "UdpSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tradle/react/UdpSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataReceivedListener"
.end annotation


# virtual methods
.method public abstract didReceiveData(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract didReceiveError(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;)V
.end method
