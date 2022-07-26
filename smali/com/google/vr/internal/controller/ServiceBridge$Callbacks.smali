.class public interface abstract Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/internal/controller/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
.end method

.method public abstract onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
.end method

.method public abstract onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
.end method

.method public abstract onControllerStateChanged(II)V
.end method

.method public abstract onServiceConnected(I)V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract onServiceFailed()V
.end method

.method public abstract onServiceInitFailed(I)V
.end method

.method public abstract onServiceUnavailable()V
.end method
