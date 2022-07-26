.class public Lcom/google/vr/ndk/base/DaydreamUtils;
.super Ljava/lang/Object;
.source "DaydreamUtils.java"


# static fields
.field public static final DAYDREAM_NOT_SUPPORTED:I = 0x0

.field public static final DAYDREAM_OPTIONAL:I = 0x1

.field public static final DAYDREAM_REQUIRED:I = 0x2

.field static final INTENT_CATEGORY_CARDBOARD:Ljava/lang/String; = "com.google.intent.category.CARDBOARD"

.field static final INTENT_CATEGORY_DAYDREAM:Ljava/lang/String; = "com.google.intent.category.DAYDREAM"

.field private static sDaydreamPhoneOverrideForTesting:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0x80

    .line 110
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 113
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/vr/ndk/base/DaydreamUtils;->getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)I
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "com.google.intent.category.DAYDREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-static {p1, p2, v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "com.google.intent.category.CARDBOARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {p1, p2, v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static isDaydreamPhone(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 32
    sget-boolean v0, Lcom/google/vr/ndk/base/DaydreamUtils;->sDaydreamPhoneOverrideForTesting:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isDaydreamViewer(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 1

    .prologue
    .line 47
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setIsDaydreamPhoneForTesting(Z)V
    .locals 0

    .prologue
    .line 79
    sput-boolean p0, Lcom/google/vr/ndk/base/DaydreamUtils;->sDaydreamPhoneOverrideForTesting:Z

    .line 80
    return-void
.end method
