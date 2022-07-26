.class public Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;
.super Lcom/asha/vrlib/strategy/ModeManager;
.source "InteractiveModeManager.java"

# interfaces
.implements Lcom/asha/vrlib/strategy/interactive/IInteractiveMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;,
        Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/asha/vrlib/strategy/ModeManager",
        "<",
        "Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;",
        ">;",
        "Lcom/asha/vrlib/strategy/interactive/IInteractiveMode;"
    }
.end annotation


# static fields
.field private static sModes:[I


# instance fields
.field private mIsResumed:Z

.field private mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

.field private updateDragRunnable:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->sModes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(ILcom/asha/vrlib/common/MDGLHandler;Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "handler"    # Lcom/asha/vrlib/common/MDGLHandler;
    .param p3, "params"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/strategy/ModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;)V

    .line 62
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->updateDragRunnable:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;

    .line 36
    iput-object p3, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .line 37
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->glHandler:Lcom/asha/vrlib/common/MDGLHandler;

    .line 38
    return-void
.end method

.method static synthetic access$200(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;)Lcom/asha/vrlib/strategy/IModeStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;)Lcom/asha/vrlib/strategy/IModeStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createStrategy(I)Lcom/asha/vrlib/strategy/IModeStrategy;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->createStrategy(I)Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    move-result-object v0

    return-object v0
.end method

.method protected createStrategy(I)Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    goto :goto_0

    .line 51
    :pswitch_2
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/MotionWithTouchStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/interactive/MotionWithTouchStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    goto :goto_0

    .line 53
    :pswitch_3
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    goto :goto_0

    .line 55
    :pswitch_4
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/CardboardMTStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mParams:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/interactive/CardboardMTStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getModes()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->sModes:[I

    return-object v0
.end method

.method public handleDrag(II)Z
    .locals 2
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->updateDragRunnable:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;

    invoke-static {v0, p1, p2}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->access$100(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;II)V

    .line 74
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->updateDragRunnable:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public on(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/asha/vrlib/strategy/ModeManager;->on(Landroid/content/Context;)V

    .line 114
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mIsResumed:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->onResume(Landroid/content/Context;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onOrientationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v0

    new-instance v1, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;

    invoke-direct {v1, p0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mIsResumed:Z

    .line 121
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->onPause(Landroid/content/Context;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->mIsResumed:Z

    .line 105
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->onResume(Landroid/content/Context;)V

    .line 108
    :cond_0
    return-void
.end method
