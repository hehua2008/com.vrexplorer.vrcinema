.class public Lcom/google/vr/platform/unity/UnityVrActivityListener;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sPresentationListener:Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;


# instance fields
.field private alignmentMarkerEnabled:Z

.field private final nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

.field private settingsButtonEnabled:Z

.field private showVrBackButtonOnlyInVR:Z

.field private uiLayer:Lcom/google/vr/cardboard/UiLayer;

.field private uiLayerEnabled:Z

.field private final unityActivity:Lcom/google/unity/GoogleUnityActivity;

.field private vrBackButtonEnabled:Z

.field private vrBackButtonListener:Ljava/lang/Runnable;

.field private vrModeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "gvrunity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const-class v0, Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;

    invoke-direct {v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;-><init>()V

    sput-object v0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->sPresentationListener:Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/vr/cardboard/NFCUtils;

    invoke-direct {v0}, Lcom/google/vr/cardboard/NFCUtils;-><init>()V

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    .line 51
    iput-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->showVrBackButtonOnlyInVR:Z

    .line 52
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    .line 53
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    .line 55
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    .line 56
    iput-boolean v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    .line 60
    new-instance v0, Lcom/google/vr/platform/unity/UnityVrActivityListener$1;

    invoke-direct {v0, p0}, Lcom/google/vr/platform/unity/UnityVrActivityListener$1;-><init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;)V

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonListener:Ljava/lang/Runnable;

    .line 101
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/unity/GoogleUnityActivity;

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    .line 103
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-static {v0, v1}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrModeEnabled(Landroid/app/Activity;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/NFCUtils;->onCreate(Landroid/app/Activity;)V

    .line 107
    new-instance v0, Lcom/google/vr/cardboard/UiLayer;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/UiLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    .line 108
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    new-instance v1, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;

    invoke-direct {v1, p0}, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;-><init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;)V

    invoke-virtual {v0, v1}, Lcom/google/unity/GoogleUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setUILayerEnabled(Z)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->onPause(Z)V

    .line 124
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonPressed()V

    return-void
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->onDisplayChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Lcom/google/vr/cardboard/UiLayer;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Lcom/google/unity/GoogleUnityActivity;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    return-object v0
.end method

.method private static native onDisplayChanged(Z)V
.end method

.method private static native setApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V
.end method

.method private static native setCardboardApi(J)V
.end method

.method public static setUnityApplicationState()V
    .locals 6

    .prologue
    .line 86
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/unity/GoogleUnityActivity;

    .line 87
    .local v0, "activity":Lcom/google/unity/GoogleUnityActivity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 88
    invoke-virtual {v0}, Lcom/google/unity/GoogleUnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lcom/google/unity/GoogleUnityActivity;->getGvrLayout()Lcom/google/vr/ndk/base/GvrLayout;

    move-result-object v2

    .line 91
    .local v2, "gvrLayout":Lcom/google/vr/ndk/base/GvrLayout;
    sget-object v3, Lcom/google/vr/platform/unity/UnityVrActivityListener;->sPresentationListener:Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;

    invoke-virtual {v2, v3}, Lcom/google/vr/ndk/base/GvrLayout;->addPresentationListener(Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;)V

    .line 93
    invoke-virtual {v2}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v1

    .line 94
    .local v1, "api":Lcom/google/vr/ndk/base/GvrApi;
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/GvrApi;->getNativeCardboardApi()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setCardboardApi(J)V

    .line 95
    return-void
.end method

.method private static native vrBackButtonPressed()V
.end method


# virtual methods
.method public finishActivityAndReturn(Z)V
    .locals 2
    .param p1, "backTo2D"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    new-instance v1, Lcom/google/vr/platform/unity/UnityVrActivityListener$4;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/platform/unity/UnityVrActivityListener$4;-><init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;Z)V

    invoke-virtual {v0, v1}, Lcom/google/unity/GoogleUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public launchConfigureActivity()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;Z)V

    .line 147
    return-void
.end method

.method public onPause(Z)V
    .locals 5
    .param p1, "paused"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    iget-object v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v1, v2}, Lcom/google/vr/cardboard/NFCUtils;->onPause(Landroid/app/Activity;)V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->nfcUtils:Lcom/google/vr/cardboard/NFCUtils;

    iget-object v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->unityActivity:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v1, v2}, Lcom/google/vr/cardboard/NFCUtils;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/vr/platform/unity/UnityVrActivityListener;->TAG:Ljava/lang/String;

    const-string v3, "Caught exception: "

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAlignmentMarkerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    .line 179
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerEnabled(Z)V

    .line 180
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    .line 174
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setSettingsButtonEnabled(Z)V

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowVrBackButtonOnlyInVR(Z)V
    .locals 1
    .param p1, "only"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->showVrBackButtonOnlyInVR:Z

    .line 193
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setVRBackButtonEnabled(Z)V

    .line 194
    return-void
.end method

.method public setUILayerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    .line 160
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->settingsButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setSettingsButtonEnabled(Z)V

    .line 162
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->alignmentMarkerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setAlignmentMarkerEnabled(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setVRBackButtonEnabled(Z)V

    .line 164
    return-void
.end method

.method public setVRBackButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "backButtonListener":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->showVrBackButtonOnlyInVR:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    if-eqz v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonListener:Ljava/lang/Runnable;

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public setVRModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrModeEnabled:Z

    .line 169
    iget-boolean v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener;->uiLayerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->setUILayerEnabled(Z)V

    .line 170
    return-void
.end method
