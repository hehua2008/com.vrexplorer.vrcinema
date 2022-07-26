.class public Lcom/google/vr/cardboard/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/vr/cardboard/ThreadUtils;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertOnUiThread()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public static getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/vr/cardboard/ThreadUtils;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/vr/cardboard/ThreadUtils;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/vr/cardboard/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/google/vr/cardboard/ThreadUtils;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static runningOnUiThread()Z
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/vr/cardboard/ThreadUtils;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static throwIfNotOnUiThread()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/google/vr/cardboard/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call was not made on the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method
