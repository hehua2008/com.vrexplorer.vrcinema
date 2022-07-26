.class public abstract Lcom/asha/vrlib/plugins/MDAbsPlugin;
.super Ljava/lang/Object;
.source "MDAbsPlugin.java"


# instance fields
.field private mIsInit:Z

.field private mPosition:Lcom/asha/vrlib/model/MDPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDAbsPlugin;->mPosition:Lcom/asha/vrlib/model/MDPosition;

    return-void
.end method


# virtual methods
.method public abstract beforeRenderer(II)V
.end method

.method public abstract destroyInGL()V
.end method

.method protected getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDAbsPlugin;->mPosition:Lcom/asha/vrlib/model/MDPosition;

    return-object v0
.end method

.method protected abstract initInGL(Landroid/content/Context;)V
.end method

.method protected abstract removable()Z
.end method

.method public abstract renderer(IIILcom/asha/vrlib/MD360Director;)V
.end method

.method public setModelPosition(Lcom/asha/vrlib/model/MDPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/asha/vrlib/model/MDPosition;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/asha/vrlib/plugins/MDAbsPlugin;->mPosition:Lcom/asha/vrlib/model/MDPosition;

    .line 39
    return-void
.end method

.method public final setupInGL(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/asha/vrlib/plugins/MDAbsPlugin;->mIsInit:Z

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->initInGL(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/plugins/MDAbsPlugin;->mIsInit:Z

    .line 23
    :cond_0
    return-void
.end method
