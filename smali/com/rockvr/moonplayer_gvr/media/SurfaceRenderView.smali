.class public Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;
.super Landroid/opengl/GLSurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;,
        Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private final mLayoutRunnable:Ljava/lang/Runnable;

.field private mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

.field private mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 46
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    .line 56
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;

    .line 57
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 59
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V

    .line 202
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 98
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 299
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 307
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->doMeasure(II)V

    .line 140
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->setMeasuredDimension(II)V

    .line 141
    return-void
.end method

.method public removeRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V

    .line 207
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 93
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setAspectRatio(I)V

    .line 134
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->requestLayout()V

    .line 135
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 128
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 120
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 122
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->requestLayout()V

    .line 124
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 111
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setVideoSize(II)V

    .line 113
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 114
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->requestLayout()V

    .line 116
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method
