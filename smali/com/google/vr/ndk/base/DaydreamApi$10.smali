.class Lcom/google/vr/ndk/base/DaydreamApi$10;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->handleInsertionIntoHeadset([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;

.field final synthetic val$deviceParams:[B


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;[B)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->val$deviceParams:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$400(Lcom/google/vr/ndk/base/DaydreamApi;)I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 728
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t handle insertion of phone into headset: VrCore API too old. Need: 11, found: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    .line 730
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

    .line 727
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 734
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t handle insertion of phone into headset: no DaydreamManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$10;->val$deviceParams:[B

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->handleInsertionIntoHeadset([B)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 741
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityException when notifying phone insertion. Check that the calling app is in the system image (must have the SYSTEM flag in package manager)."

    .line 740
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 745
    :catch_1
    move-exception v0

    .line 746
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException while notifying phone insertion."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
