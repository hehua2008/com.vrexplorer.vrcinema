.class public Lcom/google/vr/audio/unity/GvrAudio;
.super Ljava/lang/Object;
.source "GvrAudio.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "audioplugingvrunity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native setApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V
.end method

.method public static setUnityApplicationState()V
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 21
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/vr/audio/unity/GvrAudio;->setApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    .line 22
    return-void
.end method
