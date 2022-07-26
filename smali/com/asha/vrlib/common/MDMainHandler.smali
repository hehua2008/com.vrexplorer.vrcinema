.class public Lcom/asha/vrlib/common/MDMainHandler;
.super Ljava/lang/Object;
.source "MDMainHandler.java"


# static fields
.field private static sMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/asha/vrlib/common/MDMainHandler;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/asha/vrlib/common/MDMainHandler;->sMainHandler:Landroid/os/Handler;

    .line 18
    :cond_0
    return-void
.end method

.method public static sharedHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/asha/vrlib/common/MDMainHandler;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method
