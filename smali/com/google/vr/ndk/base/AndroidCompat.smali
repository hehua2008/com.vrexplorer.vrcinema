.class public final Lcom/google/vr/ndk/base/AndroidCompat;
.super Ljava/lang/Object;
.source "AndroidCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSustainedPerformanceMode(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/google/vr/cardboard/AndroidNCompat;->setSustainedPerformanceMode(Landroid/app/Activity;Z)Z

    .line 40
    return-void
.end method

.method public static setVrModeEnabled(Landroid/app/Activity;Z)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrModeEnabled(Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method
