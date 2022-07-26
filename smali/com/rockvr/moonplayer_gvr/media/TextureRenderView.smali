.class public Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;
.super Lcom/google/android/apps/muzei/render/GLTextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/IRenderView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;,
        Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private final mLayoutRunnable:Ljava/lang/Runnable;

.field private mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

.field private mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/muzei/render/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    .line 61
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    .line 62
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->addRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V

    .line 231
    return-void
.end method

.method public getSurfaceHolder()Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->access$000(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->willDetachFromWindow()V

    .line 78
    invoke-super {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->onDetachedFromWindow()V

    .line 79
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->didDetachFromWindow()V

    .line 80
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 388
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 389
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 394
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->doMeasure(II)V

    .line 151
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method

.method public removeRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mSurfaceCallback:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->removeRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V

    .line 236
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->requestLayout()V

    .line 125
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setAspectRatio(I)V

    .line 145
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->requestLayout()V

    .line 146
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setVideoRotation(I)V

    .line 139
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->setRotation(F)V

    .line 140
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 130
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 132
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->requestLayout()V

    .line 134
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 87
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->mMeasureHelper:Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->setVideoSize(II)V

    .line 89
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->requestLayout()V

    .line 91
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
