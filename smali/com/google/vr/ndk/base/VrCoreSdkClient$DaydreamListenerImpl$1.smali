.class Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;
.super Landroid/os/Handler;
.source "VrCoreSdkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 484
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 487
    :goto_0
    return-void

    .line 474
    :pswitch_0
    const-string v0, "VrCoreSdkClient"

    const-string v1, "Forcing fade in: VrCore unresponsive"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    const/4 v1, 0x1

    const-wide/16 v2, 0x15e

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->access$800(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;IJ)V

    goto :goto_0

    .line 479
    :pswitch_1
    const-string v0, "VrCoreSdkClient"

    const-string v1, "Forcing tracking resume: VrCore unresponsive"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->access$900(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
