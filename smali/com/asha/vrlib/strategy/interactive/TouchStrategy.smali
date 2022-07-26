.class public Lcom/asha/vrlib/strategy/interactive/TouchStrategy;
.super Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;
.source "TouchStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchStrategy"

.field private static final sDamping:F = 0.2f

.field private static final sDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;->sDensity:F

    return-void
.end method

.method public constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V
    .locals 0
    .param p1, "params"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    .line 22
    return-void
.end method


# virtual methods
.method public handleDrag(II)Z
    .locals 6
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I

    .prologue
    const v5, 0x3e4ccccd    # 0.2f

    .line 32
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 33
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->getDeltaX()F

    move-result v2

    int-to-float v3, p1

    sget v4, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;->sDensity:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/asha/vrlib/MD360Director;->setDeltaX(F)V

    .line 34
    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->getDeltaY()F

    move-result v2

    int-to-float v3, p2

    sget v4, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;->sDensity:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/asha/vrlib/MD360Director;->setDeltaY(F)V

    goto :goto_0

    .line 36
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    return-void
.end method

.method public turnOffInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/TouchStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 47
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->reset()V

    goto :goto_0

    .line 49
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_0
    return-void
.end method
