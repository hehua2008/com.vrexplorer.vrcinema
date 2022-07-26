.class public abstract Lcom/asha/vrlib/strategy/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/asha/vrlib/strategy/IModeStrategy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

.field private mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

.field private mMode:I

.field private mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/asha/vrlib/common/MDGLHandler;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "handler"    # Lcom/asha/vrlib/common/MDGLHandler;

    .prologue
    .line 24
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/asha/vrlib/strategy/ModeManager;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    .line 26
    iput p1, p0, Lcom/asha/vrlib/strategy/ModeManager;->mMode:I

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/strategy/ModeManager;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/ModeManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mCallback:Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    return-object v0
.end method

.method private initMode(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/ModeManager;->off(Landroid/content/Context;)V

    .line 46
    :cond_0
    invoke-virtual {p0, p2}, Lcom/asha/vrlib/strategy/ModeManager;->createStrategy(I)Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    .line 47
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    invoke-interface {v0, p1}, Lcom/asha/vrlib/strategy/IModeStrategy;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lcom/asha/vrlib/common/MDMainHandler;->sharedHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/asha/vrlib/strategy/ModeManager$1;

    invoke-direct {v1, p0, p2}, Lcom/asha/vrlib/strategy/ModeManager$1;-><init>(Lcom/asha/vrlib/strategy/ModeManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/ModeManager;->on(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createStrategy(I)Lcom/asha/vrlib/strategy/IModeStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    iget v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mMode:I

    return v0
.end method

.method protected abstract getModes()[I
.end method

.method protected getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    return-object v0
.end method

.method public off(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    const-string v1, "strategy off must call from main thread!"

    invoke-static {v1}, Lcom/asha/vrlib/common/VRUtil;->checkMainThread(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    .line 98
    .local v0, "tmpStrategy":Lcom/asha/vrlib/strategy/IModeStrategy;, "TT;"
    invoke-interface {v0, p1}, Lcom/asha/vrlib/strategy/IModeStrategy;->isSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/ModeManager;->getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v1

    new-instance v2, Lcom/asha/vrlib/strategy/ModeManager$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/asha/vrlib/strategy/ModeManager$3;-><init>(Lcom/asha/vrlib/strategy/ModeManager;Lcom/asha/vrlib/strategy/IModeStrategy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public on(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    const-string v1, "strategy on must call from main thread!"

    invoke-static {v1}, Lcom/asha/vrlib/common/VRUtil;->checkMainThread(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    .line 84
    .local v0, "tmpStrategy":Lcom/asha/vrlib/strategy/IModeStrategy;, "TT;"
    invoke-interface {v0, p1}, Lcom/asha/vrlib/strategy/IModeStrategy;->isSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/ModeManager;->getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v1

    new-instance v2, Lcom/asha/vrlib/strategy/ModeManager$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/asha/vrlib/strategy/ModeManager$2;-><init>(Lcom/asha/vrlib/strategy/ModeManager;Lcom/asha/vrlib/strategy/IModeStrategy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void
.end method

.method public prepare(Landroid/content/Context;Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    .prologue
    .line 34
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    iput-object p2, p0, Lcom/asha/vrlib/strategy/ModeManager;->mCallback:Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    .line 35
    iget v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mMode:I

    invoke-direct {p0, p1, v0}, Lcom/asha/vrlib/strategy/ModeManager;->initMode(Landroid/content/Context;I)V

    .line 36
    return-void
.end method

.method public switchMode(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/ModeManager;->getModes()[I

    move-result-object v2

    .line 65
    .local v2, "modes":[I
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/ModeManager;->getMode()I

    move-result v1

    .line 66
    .local v1, "mode":I
    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 67
    .local v0, "index":I
    add-int/lit8 v5, v0, 0x1

    array-length v6, v2

    rem-int v3, v5, v6

    .line 68
    .local v3, "nextIndex":I
    aget v4, v2, v3

    .line 70
    .local v4, "nextMode":I
    invoke-virtual {p0, p1, v4}, Lcom/asha/vrlib/strategy/ModeManager;->switchMode(Landroid/content/Context;I)V

    .line 71
    return-void
.end method

.method public switchMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager;, "Lcom/asha/vrlib/strategy/ModeManager<TT;>;"
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/ModeManager;->getMode()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iput p2, p0, Lcom/asha/vrlib/strategy/ModeManager;->mMode:I

    .line 77
    iget v0, p0, Lcom/asha/vrlib/strategy/ModeManager;->mMode:I

    invoke-direct {p0, p1, v0}, Lcom/asha/vrlib/strategy/ModeManager;->initMode(Landroid/content/Context;I)V

    goto :goto_0
.end method
