.class public Lcom/asha/vrlib/plugins/MDDrawingCache;
.super Ljava/lang/Object;
.source "MDDrawingCache.java"


# instance fields
.field private mFrameBufferId:I

.field private mRenderBufferId:I

.field private mTextureIdOutput:I

.field private mViewport:Landroid/graphics/Rect;

.field private originalFramebufferId:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mViewport:Landroid/graphics/Rect;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->originalFramebufferId:[I

    return-void
.end method

.method private createFrameBuffer(II)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget v2, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mTextureIdOutput:I

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mTextureIdOutput:I

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mRenderBufferId:I

    if-eqz v2, :cond_1

    .line 39
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mRenderBufferId:I

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 41
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mFrameBufferId:I

    if-eqz v2, :cond_2

    .line 42
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mFrameBufferId:I

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 45
    :cond_2
    const v2, 0x8ca6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->originalFramebufferId:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 48
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 49
    .local v11, "frameBuffer":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 50
    const v2, 0x8d40

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 51
    const/4 v2, 0x0

    aget v2, v11, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mFrameBufferId:I

    .line 52
    const-string v2, "Multi Fish Eye frame buffer"

    invoke-static {v2}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x1

    new-array v12, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v12, v2

    .line 56
    .local v12, "renderbufferIds":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 57
    const v2, 0x8d41

    const/4 v3, 0x0

    aget v3, v12, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 58
    const v2, 0x8d41

    const v3, 0x81a5

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 59
    const/4 v2, 0x0

    aget v2, v12, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mRenderBufferId:I

    .line 60
    const-string v2, "Multi Fish Eye renderer buffer"

    invoke-static {v2}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x1

    new-array v15, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v15, v2

    .line 63
    .local v15, "textureIds":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 64
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 65
    const/16 v2, 0xde1

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 66
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 67
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 68
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 69
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 70
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    check-cast v10, Ljava/nio/Buffer;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 71
    const/4 v2, 0x0

    aget v2, v15, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mTextureIdOutput:I

    .line 72
    const-string v2, "Multi Fish Eye texture"

    invoke-static {v2}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 75
    const v2, 0x8d40

    const v3, 0x8ce0

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mTextureIdOutput:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 76
    const v2, 0x8d40

    const v3, 0x8d00

    const v4, 0x8d41

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 77
    const-string v2, "Multi Fish Eye attach"

    invoke-static {v2}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 80
    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v14

    .line 81
    .local v14, "status":I
    const v2, 0x8cd5

    if-eq v14, v2, :cond_4

    .line 82
    const-string v13, "Framebuffer is not complete: "

    .line 83
    .local v13, "s":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Framebuffer is not complete: "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string v2, "Framebuffer is not complete: "

    goto :goto_0

    .line 87
    .end local v13    # "s":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_4
    const v2, 0x8d40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/asha/vrlib/plugins/MDDrawingCache;->originalFramebufferId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 88
    const-string v2, "Multi Fish Eye attach"

    invoke-static {v2}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private setup(II)V
    .locals 2
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/plugins/MDDrawingCache;->createFrameBuffer(II)V

    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public bind(II)V
    .locals 3
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/plugins/MDDrawingCache;->setup(II)V

    .line 93
    const v0, 0x8ca6

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->originalFramebufferId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 94
    const v0, 0x8d40

    iget v1, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mFrameBufferId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 95
    return-void
.end method

.method public getTextureOutput()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->mTextureIdOutput:I

    return v0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 102
    const v0, 0x8d40

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDDrawingCache;->originalFramebufferId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 103
    return-void
.end method
