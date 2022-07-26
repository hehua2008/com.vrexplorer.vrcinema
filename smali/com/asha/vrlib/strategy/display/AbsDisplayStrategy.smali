.class public abstract Lcom/asha/vrlib/strategy/display/AbsDisplayStrategy;
.super Ljava/lang/Object;
.source "AbsDisplayStrategy.java"

# interfaces
.implements Lcom/asha/vrlib/strategy/IModeStrategy;
.implements Lcom/asha/vrlib/strategy/display/IDisplayMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    return-void
.end method
