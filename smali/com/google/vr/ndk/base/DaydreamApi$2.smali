.class Lcom/google/vr/ndk/base/DaydreamApi$2;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->registerDaydreamIntent(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;

.field final synthetic val$intent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t register/unregister daydream intent: no DaydreamManager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->val$intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->val$intent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->registerDaydreamIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when attempting to register/unregister daydream intent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$2;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->unregisterDaydreamIntent()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
