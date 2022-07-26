.class Lcom/google/vr/audio/DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/audio/DeviceInfo;-><init>(JLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/audio/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/google/vr/audio/DeviceInfo;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    packed-switch v0, :pswitch_data_0

    .line 51
    iget-object v0, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    iget-object v1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-static {v1}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    iget-object v1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-static {v1}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    iget-object v1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-static {v1}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
