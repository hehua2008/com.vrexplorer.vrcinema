.class public Lcom/asha/vrlib/common/MDGLHandler;
.super Ljava/lang/Object;
.source "MDGLHandler.java"


# instance fields
.field private final addLock:Ljava/lang/Object;

.field private died:Z

.field private mAddQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->mAddQueue:Ljava/util/Queue;

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->mWorkQueue:Ljava/util/Queue;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->addLock:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public dealMessage()V
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Lcom/asha/vrlib/common/MDGLHandler;->addLock:Ljava/lang/Object;

    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/asha/vrlib/common/MDGLHandler;->mWorkQueue:Ljava/util/Queue;

    iget-object v3, p0, Lcom/asha/vrlib/common/MDGLHandler;->mAddQueue:Ljava/util/Queue;

    invoke-interface {v1, v3}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v1, p0, Lcom/asha/vrlib/common/MDGLHandler;->mAddQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 53
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/asha/vrlib/common/MDGLHandler;->mWorkQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/asha/vrlib/common/MDGLHandler;->mWorkQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 57
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 53
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 59
    :cond_0
    return-void
.end method

.method public markAsDestroy()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->died:Z

    .line 63
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->died:Z

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/asha/vrlib/common/MDGLHandler;->addLock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->mAddQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/asha/vrlib/common/MDGLHandler;->mAddQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
