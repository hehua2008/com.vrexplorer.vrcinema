.class public Lcom/google/vr/cardboard/UiLayer;
.super Ljava/lang/Object;
.source "UiLayer.java"


# instance fields
.field private alignmentMarker:Landroid/widget/RelativeLayout;

.field private backButton:Landroid/widget/ImageButton;

.field private volatile backButtonRunnable:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private volatile isAlignmentMarkerEnabled:Z

.field private volatile isSettingsButtonEnabled:Z

.field private rootLayout:Landroid/widget/RelativeLayout;

.field private settingsButton:Landroid/widget/ImageButton;

.field private volatile settingsButtonRunnable:Ljava/lang/Runnable;

.field private transitionView:Lcom/google/vr/cardboard/TransitionView;

.field private volatile transitionViewEnabled:Z

.field private volatile viewerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    .line 75
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    .line 76
    sget v0, Lcom/google/vr/cardboard/R$layout;->ui_layer:I

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/UiLayer;->initializeViewsWithLayoutId(I)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Z)I
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/vr/cardboard/UiLayer;->getTransitionView()Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    return-object v0
.end method

.method private static computeVisibility(Z)I
    .locals 1

    .prologue
    .line 167
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getTransitionView()Lcom/google/vr/cardboard/TransitionView;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 144
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/TransitionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    .line 146
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/TransitionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-boolean v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setViewerName(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    return-object v0
.end method

.method private initializeViewsWithLayoutId(I)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    .line 96
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$1;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonRunnable:Ljava/lang/Runnable;

    .line 102
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/vr/cardboard/R$id;->ui_settings_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    .line 103
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$2;

    invoke-direct {v1, p0}, Lcom/google/vr/cardboard/UiLayer$2;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/vr/cardboard/R$id;->ui_back_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    .line 122
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getBackButtonEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$3;

    invoke-direct {v1, p0}, Lcom/google/vr/cardboard/UiLayer$3;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/vr/cardboard/R$id;->ui_alignment_marker:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    .line 135
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getAlignmentMarkerEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public getAlignmentMarkerEnabled()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    return v0
.end method

.method public getBackButtonEnabled()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackButtonRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSettingsButtonEnabled()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    return v0
.end method

.method public getTransitionViewEnabled()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getViewerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlignmentMarkerEnabled(Z)V
    .locals 1

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    .line 247
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$7;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$7;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method public setAlignmentMarkerScale(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$8;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$8;-><init>(Lcom/google/vr/cardboard/UiLayer;F)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBackButtonListener(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    .line 230
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$6;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$6;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$4;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$4;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public setPortraitSupportEnabled(Z)V
    .locals 1

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    sget v0, Lcom/google/vr/cardboard/R$layout;->ui_layer_with_portrait_support:I

    .line 89
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/UiLayer;->initializeViewsWithLayoutId(I)V

    .line 91
    return-void

    .line 90
    :cond_0
    sget v0, Lcom/google/vr/cardboard/R$layout;->ui_layer:I

    goto :goto_0
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 200
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$5;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$5;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public setSettingsButtonRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonRunnable:Ljava/lang/Runnable;

    .line 218
    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    .line 295
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$9;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$9;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public setTransitionViewListener(Lcom/google/vr/cardboard/TransitionView$TransitionListener;)V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$10;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$10;-><init>(Lcom/google/vr/cardboard/UiLayer;Lcom/google/vr/cardboard/TransitionView$TransitionListener;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    .line 336
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$11;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$11;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method
