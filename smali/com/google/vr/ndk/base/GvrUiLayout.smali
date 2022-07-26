.class public Lcom/google/vr/ndk/base/GvrUiLayout;
.super Landroid/widget/FrameLayout;
.source "GvrUiLayout.java"


# static fields
.field private static final DAYDREAM_ALIGNMENT_MARKER_SCALE:F = 0.35f


# instance fields
.field private daydreamModeEnabled:Z

.field private final defaultCloseButtonRunnable:Ljava/lang/Runnable;

.field private final uiLayer:Lcom/google/vr/cardboard/UiLayer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-direct {v0}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/vr/ndk/base/GvrUiLayout;-><init>(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->daydreamModeEnabled:Z

    .line 61
    invoke-static {p1, p2}, Lcom/google/vr/ndk/base/GvrUiLayout;->createDefaultCloseButtonRunnable(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->defaultCloseButtonRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/google/vr/cardboard/UiLayer;

    invoke-direct {v0, p1}, Lcom/google/vr/cardboard/UiLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    .line 64
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->defaultCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrUiLayout;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method private static createDefaultCloseButtonRunnable(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 183
    if-nez v1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayout$1;

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayout$1;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayout$2;

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayout$2;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static launchOrInstallGvrApp(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getUiLayer()Lcom/google/vr/cardboard/UiLayer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    return-object v0
.end method

.method invokeCloseButtonListener()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getBackButtonRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 144
    :cond_0
    return-void
.end method

.method isDaydreamModeEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->daydreamModeEnabled:Z

    return v0
.end method

.method public setCloseButtonListener(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 105
    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->defaultCloseButtonRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method setDaydreamModeEnabled(Z)V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->daydreamModeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->daydreamModeEnabled:Z

    .line 161
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V

    .line 168
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewEnabled(Z)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V

    .line 88
    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->daydreamModeEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewEnabled(Z)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setViewerName(Ljava/lang/String;)V

    .line 128
    return-void
.end method
