.class public interface abstract Lcom/tradle/react/UdpReceiverTask$OnDataReceivedListener;
.super Ljava/lang/Object;
.source "UdpReceiverTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tradle/react/UdpReceiverTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataReceivedListener"
.end annotation


# virtual methods
.method public abstract didReceiveData(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract didReceiveError(Ljava/lang/String;)V
.end method

.method public abstract didReceiveRuntimeException(Ljava/lang/RuntimeException;)V
.end method
