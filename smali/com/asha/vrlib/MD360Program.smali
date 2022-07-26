.class public Lcom/asha/vrlib/MD360Program;
.super Ljava/lang/Object;
.source "MD360Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MD360Program$FragmentShaderFactory;
    }
.end annotation


# instance fields
.field private mContentType:I

.field private mMVMatrixHandle:I

.field private mMVPMatrixHandle:I

.field private mPositionHandle:I

.field private mProgramHandle:I

.field private mSTMatrixHandle:I

.field private mTextureCoordinateHandle:I

.field private mTextureUniformHandle:I

.field private mUseTextureTransformHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/asha/vrlib/MD360Program;->mContentType:I

    .line 27
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/MD360Program;->getVertexShader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "vertexShader":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/MD360Program;->getFragmentShader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "fragmentShader":Ljava/lang/String;
    const v4, 0x8b31

    invoke-static {v4, v2}, Lcom/asha/vrlib/common/GLUtil;->compileShader(ILjava/lang/String;)I

    move-result v3

    .line 43
    .local v3, "vertexShaderHandle":I
    const v4, 0x8b30

    invoke-static {v4, v0}, Lcom/asha/vrlib/common/GLUtil;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "fragmentShaderHandle":I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "a_Position"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "a_TexCoordinate"

    aput-object v6, v4, v5

    invoke-static {v3, v1, v4}, Lcom/asha/vrlib/common/GLUtil;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    .line 49
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "u_MVPMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mMVPMatrixHandle:I

    .line 50
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "u_MVMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mMVMatrixHandle:I

    .line 51
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "u_Texture"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mTextureUniformHandle:I

    .line 52
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "a_Position"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mPositionHandle:I

    .line 53
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "a_TexCoordinate"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mTextureCoordinateHandle:I

    .line 54
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "u_STMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mSTMatrixHandle:I

    .line 55
    iget v4, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    const-string v5, "u_UseSTM"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asha/vrlib/MD360Program;->mUseTextureTransformHandle:I

    .line 56
    return-void
.end method

.method protected getFragmentShader(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mContentType:I

    invoke-static {p1, v0}, Lcom/asha/vrlib/MD360Program$FragmentShaderFactory;->fs(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMVMatrixHandle()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mMVMatrixHandle:I

    return v0
.end method

.method public getMVPMatrixHandle()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mMVPMatrixHandle:I

    return v0
.end method

.method public getPositionHandle()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mPositionHandle:I

    return v0
.end method

.method public getSTMatrixHandle()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mSTMatrixHandle:I

    return v0
.end method

.method public getTextureCoordinateHandle()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mTextureCoordinateHandle:I

    return v0
.end method

.method public getTextureUniformHandle()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mTextureUniformHandle:I

    return v0
.end method

.method public getUseTextureTransformHandle()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mUseTextureTransformHandle:I

    return v0
.end method

.method protected getVertexShader(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget v0, Lcom/asha/vrlib/R$raw;->per_pixel_vertex_shader:I

    invoke-static {p1, v0}, Lcom/asha/vrlib/common/GLUtil;->readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use()V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/asha/vrlib/MD360Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 68
    return-void
.end method
