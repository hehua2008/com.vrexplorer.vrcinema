.class public Lcom/asha/vrlib/MD360Renderer;
.super Ljava/lang/Object;
.source "MD360Renderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MD360Renderer$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MD360Renderer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

.field private mFps:Lcom/asha/vrlib/common/Fps;

.field private mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

.field private mHeight:I

.field private mMainLinePipe:Lcom/asha/vrlib/plugins/MDAbsLinePipe;

.field private mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

.field private mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

.field private mWidth:I


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MD360Renderer$Builder;)V
    .locals 2
    .param p1, "params"    # Lcom/asha/vrlib/MD360Renderer$Builder;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/asha/vrlib/common/Fps;

    invoke-direct {v0}, Lcom/asha/vrlib/common/Fps;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mFps:Lcom/asha/vrlib/common/Fps;

    .line 48
    invoke-static {p1}, Lcom/asha/vrlib/MD360Renderer$Builder;->access$000(Lcom/asha/vrlib/MD360Renderer$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/asha/vrlib/MD360Renderer$Builder;->access$100(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 50
    invoke-static {p1}, Lcom/asha/vrlib/MD360Renderer$Builder;->access$200(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 51
    invoke-static {p1}, Lcom/asha/vrlib/MD360Renderer$Builder;->access$300(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/plugins/MDPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 52
    invoke-static {p1}, Lcom/asha/vrlib/MD360Renderer$Builder;->access$400(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    .line 54
    new-instance v0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    iget-object v1, p0, Lcom/asha/vrlib/MD360Renderer;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;-><init>(Lcom/asha/vrlib/strategy/display/DisplayModeManager;)V

    iput-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mMainLinePipe:Lcom/asha/vrlib/plugins/MDAbsLinePipe;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MD360Renderer$Builder;Lcom/asha/vrlib/MD360Renderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;
    .param p2, "x1"    # Lcom/asha/vrlib/MD360Renderer$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MD360Renderer;-><init>(Lcom/asha/vrlib/MD360Renderer$Builder;)V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/asha/vrlib/MD360Renderer$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    new-instance v0, Lcom/asha/vrlib/MD360Renderer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MD360Renderer$Builder;-><init>(Lcom/asha/vrlib/MD360Renderer$1;)V

    .line 135
    .local v0, "builder":Lcom/asha/vrlib/MD360Renderer$Builder;
    invoke-static {v0, p0}, Lcom/asha/vrlib/MD360Renderer$Builder;->access$002(Lcom/asha/vrlib/MD360Renderer$Builder;Landroid/content/Context;)Landroid/content/Context;

    .line 136
    return-object v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v12, 0xc11

    const/4 v11, 0x0

    .line 82
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    invoke-virtual {v8}, Lcom/asha/vrlib/common/MDGLHandler;->dealMessage()V

    .line 84
    const/16 v8, 0x4100

    invoke-static {v8}, Landroid/opengl/GLES20;->glClear(I)V

    .line 85
    const-string v8, "MD360Renderer onDrawFrame 1"

    invoke-static {v8}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 87
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v8}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->getVisibleSize()I

    move-result v6

    .line 89
    .local v6, "size":I
    iget v8, p0, Lcom/asha/vrlib/MD360Renderer;->mWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    int-to-float v9, v6

    div-float/2addr v8, v9

    float-to-int v7, v8

    .line 90
    .local v7, "width":I
    iget v2, p0, Lcom/asha/vrlib/MD360Renderer;->mHeight:I

    .line 93
    .local v2, "height":I
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mMainLinePipe:Lcom/asha/vrlib/plugins/MDAbsLinePipe;

    iget-object v9, p0, Lcom/asha/vrlib/MD360Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/asha/vrlib/plugins/MDAbsLinePipe;->setup(Landroid/content/Context;)V

    .line 94
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mMainLinePipe:Lcom/asha/vrlib/plugins/MDAbsLinePipe;

    iget v9, p0, Lcom/asha/vrlib/MD360Renderer;->mWidth:I

    iget v10, p0, Lcom/asha/vrlib/MD360Renderer;->mHeight:I

    invoke-virtual {v8, v9, v10, v6}, Lcom/asha/vrlib/plugins/MDAbsLinePipe;->takeOver(III)V

    .line 96
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v8}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectors()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "directors":Ljava/util/List;, "Ljava/util/List<Lcom/asha/vrlib/MD360Director;>;"
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v8}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getMainPlugin()Lcom/asha/vrlib/plugins/MDAbsPlugin;

    move-result-object v4

    .line 100
    .local v4, "mainPlugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    if-eqz v4, :cond_0

    .line 101
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->setupInGL(Landroid/content/Context;)V

    .line 102
    iget v8, p0, Lcom/asha/vrlib/MD360Renderer;->mWidth:I

    iget v9, p0, Lcom/asha/vrlib/MD360Renderer;->mHeight:I

    invoke-virtual {v4, v8, v9}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->beforeRenderer(II)V

    .line 105
    :cond_0
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v8}, Lcom/asha/vrlib/plugins/MDPluginManager;->getPlugins()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 106
    .local v5, "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    iget-object v9, p0, Lcom/asha/vrlib/MD360Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->setupInGL(Landroid/content/Context;)V

    .line 107
    iget v9, p0, Lcom/asha/vrlib/MD360Renderer;->mWidth:I

    iget v10, p0, Lcom/asha/vrlib/MD360Renderer;->mHeight:I

    invoke-virtual {v5, v9, v10}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->beforeRenderer(II)V

    goto :goto_0

    .line 110
    .end local v5    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 129
    :cond_2
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mMainLinePipe:Lcom/asha/vrlib/plugins/MDAbsLinePipe;

    iget v9, p0, Lcom/asha/vrlib/MD360Renderer;->mWidth:I

    iget v10, p0, Lcom/asha/vrlib/MD360Renderer;->mHeight:I

    invoke-virtual {v8, v9, v10, v6}, Lcom/asha/vrlib/plugins/MDAbsLinePipe;->commit(III)V

    .line 131
    return-void

    .line 113
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 114
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    mul-int v8, v7, v3

    invoke-static {v8, v11, v7, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 115
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 116
    mul-int v8, v7, v3

    invoke-static {v8, v11, v7, v2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 118
    if-eqz v4, :cond_4

    .line 119
    invoke-virtual {v4, v3, v7, v2, v0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->renderer(IIILcom/asha/vrlib/MD360Director;)V

    .line 122
    :cond_4
    iget-object v8, p0, Lcom/asha/vrlib/MD360Renderer;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v8}, Lcom/asha/vrlib/plugins/MDPluginManager;->getPlugins()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 123
    .restart local v5    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    invoke-virtual {v5, v3, v7, v2, v0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->renderer(IIILcom/asha/vrlib/MD360Director;)V

    goto :goto_2

    .line 126
    .end local v5    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    :cond_5
    invoke-static {v12}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 71
    iput p2, p0, Lcom/asha/vrlib/MD360Renderer;->mWidth:I

    .line 72
    iput p3, p0, Lcom/asha/vrlib/MD360Renderer;->mHeight:I

    .line 74
    iget-object v0, p0, Lcom/asha/vrlib/MD360Renderer;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    invoke-virtual {v0}, Lcom/asha/vrlib/common/MDGLHandler;->dealMessage()V

    .line 75
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 63
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 67
    return-void
.end method
