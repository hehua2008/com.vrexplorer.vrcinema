.class public Lcom/asha/vrlib/strategy/display/NormalStrategy;
.super Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;
.source "NormalStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisibleSize()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
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
    .line 15
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    return-void
.end method
