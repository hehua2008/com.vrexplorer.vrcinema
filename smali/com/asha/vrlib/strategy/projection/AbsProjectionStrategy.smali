.class public abstract Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
.super Ljava/lang/Object;
.source "AbsProjectionStrategy.java"

# interfaces
.implements Lcom/asha/vrlib/strategy/IModeStrategy;
.implements Lcom/asha/vrlib/strategy/projection/IProjectionMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract buildMainPlugin(Lcom/asha/vrlib/model/MDMainPluginBuilder;)Lcom/asha/vrlib/plugins/MDAbsPlugin;
.end method

.method protected hijackDirectorFactory()Lcom/asha/vrlib/MD360DirectorFactory;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    return-void
.end method
