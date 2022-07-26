.class Lcom/google/vr/ndk/base/DaydreamApi$11;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->handleRemovalFromHeadset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$11;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$11;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$400(Lcom/google/vr/ndk/base/DaydreamApi;)I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 770
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t handle removal of phone from headset: VrCore API too old. Need: 11, found: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$11;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    .line 772
    invoke-static {v2}, Lcom/google/vr/ndk/base/DaydreamApi;->access$400(Lcom/google/vr/ndk/base/DaydreamApi;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$11;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 776
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t handle removal of phone from headset: no DaydreamManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$11;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->handleRemovalFromHeadset()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 783
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityException when notifying phone removal. Check that the calling app is in the system image (must have the SYSTEM flag in package manager)."

    .line 782
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 787
    :catch_1
    move-exception v0

    .line 788
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException while notifying phone removal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
