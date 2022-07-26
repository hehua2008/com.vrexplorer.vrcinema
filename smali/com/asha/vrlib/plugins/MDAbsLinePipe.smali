.class public abstract Lcom/asha/vrlib/plugins/MDAbsLinePipe;
.super Ljava/lang/Object;
.source "MDAbsLinePipe.java"


# instance fields
.field private mIsInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract commit(III)V
.end method

.method protected abstract init(Landroid/content/Context;)V
.end method

.method public final setup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/asha/vrlib/plugins/MDAbsLinePipe;->mIsInit:Z

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/plugins/MDAbsLinePipe;->init(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/plugins/MDAbsLinePipe;->mIsInit:Z

    .line 23
    :cond_0
    return-void
.end method

.method public abstract takeOver(III)V
.end method
