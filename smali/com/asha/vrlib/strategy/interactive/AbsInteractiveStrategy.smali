.class public abstract Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;
.super Ljava/lang/Object;
.source "AbsInteractiveStrategy.java"

# interfaces
.implements Lcom/asha/vrlib/strategy/IModeStrategy;
.implements Lcom/asha/vrlib/strategy/interactive/IInteractiveMode;


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private params:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V
    .locals 1
    .param p1, "params"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->mMainHandler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->params:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .line 38
    return-void
.end method


# virtual methods
.method protected getDirectorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/MD360Director;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->params:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMainHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->mMainHandler:Landroid/os/Handler;

    .line 27
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->mMainHandler:Landroid/os/Handler;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->params:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    return-object v0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method
