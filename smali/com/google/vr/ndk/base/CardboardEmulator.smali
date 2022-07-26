.class Lcom/google/vr/ndk/base/CardboardEmulator;
.super Ljava/lang/Object;
.source "CardboardEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

.field private resumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/CardboardEmulator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;

    invoke-direct {v0, p2}, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->createServiceBridge(Landroid/content/Context;Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;)Lcom/google/vr/internal/controller/ServiceBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    .line 47
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0, v1}, Lcom/google/vr/internal/controller/ServiceBridge;->setOrientationEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0, v1}, Lcom/google/vr/internal/controller/ServiceBridge;->setGyroEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0, v1}, Lcom/google/vr/internal/controller/ServiceBridge;->setAccelEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0, v1}, Lcom/google/vr/internal/controller/ServiceBridge;->setTouchEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0, v1}, Lcom/google/vr/internal/controller/ServiceBridge;->setGesturesEnabled(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method protected createServiceBridge(Landroid/content/Context;Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;)Lcom/google/vr/internal/controller/ServiceBridge;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/internal/controller/ServiceBridge;-><init>(Landroid/content/Context;Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;)V

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    .line 72
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->requestUnbind()V

    .line 74
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    .line 61
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->requestBind()V

    .line 63
    :cond_0
    return-void
.end method
