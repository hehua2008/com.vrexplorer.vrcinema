.class Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;
.super Ljava/lang/Object;
.source "CardboardEmulator.java"

# interfaces
.implements Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/CardboardEmulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerCallbacks"
.end annotation


# instance fields
.field private final cardboardTriggerCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->cardboardTriggerCallback:Ljava/lang/Runnable;

    .line 90
    return-void
.end method


# virtual methods
.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEventCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v1

    .line 114
    iget-boolean v2, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    if-eqz v2, :cond_0

    .line 117
    iget v1, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    packed-switch v1, :pswitch_data_0

    .line 112
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->cardboardTriggerCallback:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 131
    :cond_1
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 140
    return-void
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onControllerStateChanged(II)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onServiceConnected(I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onServiceFailed()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onServiceInitFailed(I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
