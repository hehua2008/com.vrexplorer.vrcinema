.class public Lcom/asha/vrlib/strategy/display/DisplayModeManager;
.super Lcom/asha/vrlib/strategy/ModeManager;
.source "DisplayModeManager.java"

# interfaces
.implements Lcom/asha/vrlib/strategy/display/IDisplayMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/asha/vrlib/strategy/ModeManager",
        "<",
        "Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;",
        ">;",
        "Lcom/asha/vrlib/strategy/display/IDisplayMode;"
    }
.end annotation


# static fields
.field public static sModes:[I


# instance fields
.field private antiDistortionEnabled:Z

.field private barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->sModes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x65
        0x66
    .end array-data
.end method

.method public constructor <init>(ILcom/asha/vrlib/common/MDGLHandler;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "handler"    # Lcom/asha/vrlib/common/MDGLHandler;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/strategy/ModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic createStrategy(I)Lcom/asha/vrlib/strategy/IModeStrategy;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->createStrategy(I)Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;

    move-result-object v0

    return-object v0
.end method

.method protected createStrategy(I)Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance v0, Lcom/asha/vrlib/strategy/display/NormalStrategy;

    invoke-direct {v0}, Lcom/asha/vrlib/strategy/display/NormalStrategy;-><init>()V

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    new-instance v0, Lcom/asha/vrlib/strategy/display/GlassStrategy;

    invoke-direct {v0}, Lcom/asha/vrlib/strategy/display/GlassStrategy;-><init>()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public getBarrelDistortionConfig()Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    return-object v0
.end method

.method protected getModes()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->sModes:[I

    return-object v0
.end method

.method public getVisibleSize()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;->getVisibleSize()I

    move-result v0

    return v0
.end method

.method public isAntiDistortionEnabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->antiDistortionEnabled:Z

    return v0
.end method

.method public setAntiDistortionEnabled(Z)V
    .locals 0
    .param p1, "antiDistortionEnabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->antiDistortionEnabled:Z

    .line 46
    return-void
.end method

.method public setBarrelDistortionConfig(Lcom/asha/vrlib/model/BarrelDistortionConfig;)V
    .locals 0
    .param p1, "barrelDistortionConfig"    # Lcom/asha/vrlib/model/BarrelDistortionConfig;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    .line 54
    return-void
.end method
