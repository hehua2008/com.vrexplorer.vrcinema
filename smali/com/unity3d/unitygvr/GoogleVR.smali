.class public Lcom/unity3d/unitygvr/GoogleVR;
.super Ljava/lang/Object;
.source "GoogleVR.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Unity"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mGvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private mGvrGlView:Landroid/view/SurfaceView;

.field private mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

.field private mGvrLoaded:Z

.field private mGvrUiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

.field private mIsDaydream:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 22
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    .line 23
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrUiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 24
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrGlView:Landroid/view/SurfaceView;

    .line 26
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mActivity:Landroid/app/Activity;

    .line 27
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mContext:Landroid/content/Context;

    .line 28
    iput-boolean v1, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    .line 29
    iput-boolean v1, p0, Lcom/unity3d/unitygvr/GoogleVR;->mIsDaydream:Z

    .line 33
    return-void
.end method

.method private loadGvrLibrary()Z
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    if-nez v0, :cond_0

    .line 172
    const-string v0, "gvr"

    invoke-direct {p0, v0}, Lcom/unity3d/unitygvr/GoogleVR;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    .line 173
    iget-boolean v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    if-nez v0, :cond_0

    .line 174
    const-string v0, "Unity"

    const-string v1, "Unable to load Google GVR Library."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    return v0
.end method

.method private loadLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Lcom/unity3d/unitygvr/GoogleVR;->loadLibraryStatic(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static loadLibraryStatic(Ljava/lang/String;)Z
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 148
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 62
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    .line 63
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrUiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 64
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrGlView:Landroid/view/SurfaceView;

    .line 66
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mContext:Landroid/content/Context;

    .line 68
    iput-boolean v1, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    .line 69
    iput-boolean v1, p0, Lcom/unity3d/unitygvr/GoogleVR;->mIsDaydream:Z

    .line 70
    return-void
.end method

.method public enable(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "Unity"

    const-string v1, "Google VR is in an invalid state. Failing enable."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/vr/ndk/base/AndroidCompat;->setVrModeEnabled(Landroid/app/Activity;Z)Z

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGvrLayout()Lcom/google/vr/ndk/base/GvrLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    return-object v0
.end method

.method public initialize(Landroid/app/Activity;Landroid/content/Context;Landroid/view/SurfaceView;Z)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "glView"    # Landroid/view/SurfaceView;
    .param p4, "isDaydream"    # Z

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLoaded:Z

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 47
    :cond_1
    const-string v0, "Unity"

    const-string v1, "One or more parameters were invalid when trying to initialize GoogleVR."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/unity3d/unitygvr/GoogleVR;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrGlView:Landroid/view/SurfaceView;

    .line 54
    iput-boolean p4, p0, Lcom/unity3d/unitygvr/GoogleVR;->mIsDaydream:Z

    .line 56
    invoke-direct {p0}, Lcom/unity3d/unitygvr/GoogleVR;->loadGvrLibrary()Z

    move-result v0

    goto :goto_0
.end method

.method public load(ZZZLjava/lang/Runnable;)J
    .locals 5
    .param p1, "enableAsynchronousProjection"    # Z
    .param p2, "enableSustainedPerformanceMode"    # Z
    .param p3, "enableTransitionView"    # Z
    .param p4, "closeButtonHandler"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 74
    iget-object v2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 76
    :cond_0
    const-string v2, "Unity"

    const-string v3, "Google VR is in an invalid state. Failing load"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    :goto_0
    return-wide v0

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    if-nez v2, :cond_1

    .line 84
    new-instance v2, Lcom/google/vr/ndk/base/GvrLayout;

    iget-object v3, p0, Lcom/unity3d/unitygvr/GoogleVR;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/vr/ndk/base/GvrLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    .line 85
    iget-object v2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    iget-object v3, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrGlView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Lcom/google/vr/ndk/base/GvrLayout;->setPresentationView(Landroid/view/View;)V

    .line 87
    if-eqz p1, :cond_4

    .line 89
    iget-object v2, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v2, v4}, Lcom/google/vr/ndk/base/GvrLayout;->setAsyncReprojectionEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 91
    const-string v2, "Unity"

    const-string v3, "Error Enabling Async Projection. Aborting load operation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_3
    if-eqz p2, :cond_4

    .line 97
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/google/vr/ndk/base/AndroidCompat;->setSustainedPerformanceMode(Landroid/app/Activity;Z)V

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->getUiLayout()Lcom/google/vr/ndk/base/GvrUiLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrUiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 103
    if-eqz p4, :cond_5

    .line 104
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrUiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0, p4}, Lcom/google/vr/ndk/base/GvrUiLayout;->setCloseButtonListener(Ljava/lang/Runnable;)V

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrUiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0, p3}, Lcom/google/vr/ndk/base/GvrUiLayout;->setTransitionViewEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 109
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getNativeGvrContext()J

    move-result-wide v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onPause()V

    .line 118
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onResume()V

    .line 123
    return-void
.end method

.method public unload()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/unity3d/unitygvr/GoogleVR;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->shutdown()V

    .line 141
    const/4 v0, 0x1

    return v0
.end method
