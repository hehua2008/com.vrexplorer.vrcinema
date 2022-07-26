.class public interface abstract Lcom/tradle/react/UdpSenderTask$OnDataSentListener;
.super Ljava/lang/Object;
.source "UdpSenderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tradle/react/UdpSenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataSentListener"
.end annotation


# virtual methods
.method public abstract onDataSent(Lcom/tradle/react/UdpSenderTask;)V
.end method

.method public abstract onDataSentError(Lcom/tradle/react/UdpSenderTask;Ljava/lang/String;)V
.end method

.method public abstract onDataSentRuntimeException(Lcom/tradle/react/UdpSenderTask;Ljava/lang/RuntimeException;)V
.end method
