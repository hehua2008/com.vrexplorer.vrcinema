.class public Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;
.super Ljava/lang/Object;
.source "DaydreamUtilsWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityDaydreamCompatibility(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getComponentDaydreamCompatibility(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaydreamActivity(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamComponent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDaydreamComponent(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->getComponentDaydreamCompatibility(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaydreamPhone(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 83
    invoke-static {p1}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDaydreamRequiredActivity(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamRequiredComponent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDaydreamRequiredComponent(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->getComponentDaydreamCompatibility(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaydreamViewer(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamViewer(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result v0

    return v0
.end method
