.class public Lcom/asha/vrlib/strategy/display/GlassStrategy;
.super Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;
.source "GlassStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisibleSize()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public turnOffInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    return-void
.end method
