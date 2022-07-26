.class Lcom/google/vr/ndk/base/ThrottlingMonitor$1;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v1}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p2}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 50
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;

    .line 56
    invoke-interface {v1}, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;->onInitialized()V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 64
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
