.class public Lcom/asha/vrlib/texture/MD360VideoTexture;
.super Lcom/asha/vrlib/texture/MD360Texture;
.source "MD360VideoTexture.java"


# static fields
.field private static final sUseTransform:[I


# instance fields
.field private mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransformMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/asha/vrlib/texture/MD360VideoTexture;->sUseTransform:[I

    return-void
.end method

.method public constructor <init>(Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;)V
    .locals 1
    .param p1, "onSurfaceReadyListener"    # Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/asha/vrlib/texture/MD360Texture;-><init>()V

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mTransformMatrix:[F

    .line 28
    iput-object p1, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    .line 29
    return-void
.end method

.method private onCreateSurface(I)V
    .locals 2
    .param p1, "glSurfaceTextureId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    .line 70
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    iget-object v1, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;->onSurfaceReady(Landroid/view/Surface;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/asha/vrlib/texture/MD360Texture;->create()V

    .line 39
    invoke-virtual {p0}, Lcom/asha/vrlib/texture/MD360VideoTexture;->getCurrentTextureId()I

    move-result v0

    .line 40
    .local v0, "glSurfaceTexture":I
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/texture/MD360VideoTexture;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/asha/vrlib/texture/MD360VideoTexture;->onCreateSurface(I)V

    goto :goto_0
.end method

.method protected createTextureId()I
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 77
    new-array v0, v5, [I

    .line 80
    .local v0, "textures":[I
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 81
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 82
    const-string v1, "Texture generate"

    invoke-static {v1}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 84
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 85
    const-string v1, "Texture bind"

    invoke-static {v1}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 87
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 88
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 89
    const/16 v1, 0x2802

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 90
    const/16 v1, 0x2803

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 92
    aget v1, v0, v3

    return v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 55
    :cond_0
    iput-object v1, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 57
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    .line 61
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    iget-object v1, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;->onSurfaceReady(Landroid/view/Surface;)V

    .line 115
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    .line 34
    return-void
.end method

.method public texture(Lcom/asha/vrlib/MD360Program;)Z
    .locals 5
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/asha/vrlib/texture/MD360VideoTexture;->getCurrentTextureId()I

    move-result v0

    .line 98
    .local v0, "glSurfaceTexture":I
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/texture/MD360VideoTexture;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 104
    iget-object v3, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mTransformMatrix:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 105
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getUseTextureTransformHandle()I

    move-result v3

    sget-object v4, Lcom/asha/vrlib/texture/MD360VideoTexture;->sUseTransform:[I

    invoke-static {v3, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 106
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getSTMatrixHandle()I

    move-result v3

    iget-object v4, p0, Lcom/asha/vrlib/texture/MD360VideoTexture;->mTransformMatrix:[F

    invoke-static {v3, v2, v1, v4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move v1, v2

    .line 107
    goto :goto_0
.end method
