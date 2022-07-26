.class public Lcom/asha/vrlib/texture/MD360BitmapTexture;
.super Lcom/asha/vrlib/texture/MD360Texture;
.source "MD360BitmapTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;,
        Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MD360BitmapTexture"


# instance fields
.field private mBitmapProvider:Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;

.field private mIsReady:Z

.field private mTextureDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;)V
    .locals 2
    .param p1, "bitmapProvider"    # Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/asha/vrlib/texture/MD360Texture;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTextureDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-object p1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mBitmapProvider:Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/texture/MD360BitmapTexture;)Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/texture/MD360BitmapTexture;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asha/vrlib/texture/MD360BitmapTexture;)Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/texture/MD360BitmapTexture;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mBitmapProvider:Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;

    return-object v0
.end method

.method private loadTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    invoke-virtual {v1}, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->releaseBitmap()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    .line 85
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 86
    .local v0, "maxSize":[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 89
    new-instance v1, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    aget v2, v0, v2

    invoke-direct {v1, v2}, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;-><init>(I)V

    iput-object v1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    .line 91
    invoke-static {}, Lcom/asha/vrlib/common/MDMainHandler;->sharedHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/asha/vrlib/texture/MD360BitmapTexture$1;

    invoke-direct {v2, p0}, Lcom/asha/vrlib/texture/MD360BitmapTexture$1;-><init>(Lcom/asha/vrlib/texture/MD360BitmapTexture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method private textureInThread(ILcom/asha/vrlib/MD360Program;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "textureId"    # I
    .param p2, "program"    # Lcom/asha/vrlib/MD360Program;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x2600

    const v3, 0x47012f00    # 33071.0f

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 118
    const-string v0, "bitmap can\'t be null!"

    invoke-static {p3, v0}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->isEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 122
    :cond_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 123
    const-string v0, "MD360BitmapTexture glActiveTexture"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 126
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 127
    const-string v0, "MD360BitmapTexture glBindTexture"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 130
    const/16 v0, 0x2801

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 131
    const/16 v0, 0x2800

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 132
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 133
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 136
    invoke-static {v1, v2, p3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 137
    const-string v0, "MD360BitmapTexture texImage2D"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/asha/vrlib/MD360Program;->getTextureUniformHandle()I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 140
    const-string v0, "MD360BitmapTexture textureInThread"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTextureId()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v3, [I

    .line 36
    .local v0, "textureHandle":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 37
    aget v1, v0, v2

    .line 41
    .local v1, "textureId":I
    invoke-direct {p0}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->loadTexture()V

    .line 42
    return v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->releaseBitmap()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    .line 111
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mIsReady:Z

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTextureDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public texture(Lcom/asha/vrlib/MD360Program;)Z
    .locals 6
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    iget-object v3, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTextureDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->loadTexture()V

    .line 50
    iget-object v3, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTextureDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mTmpAsyncCallback:Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    .line 55
    .local v0, "asyncCallback":Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;
    invoke-virtual {p0}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->getCurrentTextureId()I

    move-result v2

    .line 56
    .local v2, "textureId":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->hasBitmap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 58
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2, p1, v1}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->textureInThread(ILcom/asha/vrlib/MD360Program;Landroid/graphics/Bitmap;)V

    .line 59
    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->releaseBitmap()V

    .line 60
    iput-boolean v5, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture;->mIsReady:Z

    .line 63
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 64
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 65
    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 66
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getTextureUniformHandle()I

    move-result v3

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 68
    :cond_2
    return v5
.end method
