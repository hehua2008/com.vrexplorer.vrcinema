.class public abstract Lcom/asha/vrlib/objects/MDAbsObject3D;
.super Ljava/lang/Object;
.source "MDAbsObject3D.java"


# static fields
.field private static final sPositionDataSize:I = 0x3

.field private static final sTextureCoordinateDataSize:I = 0x2


# instance fields
.field private mIndicesBuffer:Ljava/nio/ShortBuffer;

.field private mNumIndices:I

.field private mTexCoordinateBuffers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticesBuffers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mTexCoordinateBuffers:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mVerticesBuffers:Landroid/util/SparseArray;

    .line 31
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    invoke-virtual {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getNumIndices()I

    move-result v0

    const/16 v1, 0x1403

    invoke-virtual {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getNumIndices()I

    move-result v0

    invoke-static {v3, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method protected abstract executeLoad(Landroid/content/Context;)V
.end method

.method public getIndicesBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mNumIndices:I

    return v0
.end method

.method public getTexCoordinateBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mTexCoordinateBuffers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVerticesBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mVerticesBuffers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public setIndicesBuffer(Ljava/nio/ShortBuffer;)V
    .locals 0
    .param p1, "mIndicesBuffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    .line 91
    return-void
.end method

.method public setNumIndices(I)V
    .locals 0
    .param p1, "mNumIndices"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mNumIndices:I

    .line 67
    return-void
.end method

.method public setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "texCoordinateBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mTexCoordinateBuffers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public setVerticesBuffer(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "verticesBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDAbsObject3D;->mVerticesBuffers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V
    .locals 6
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0, p2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getTexCoordinateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 48
    .local v5, "textureBuffer":Ljava/nio/FloatBuffer;
    if-nez v5, :cond_0

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getTextureCoordinateHandle()I

    move-result v0

    .line 54
    .local v0, "textureCoordinateHandle":I
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 55
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V
    .locals 6
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, p2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getVerticesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 35
    .local v5, "vertexBuffer":Ljava/nio/FloatBuffer;
    if-nez v5, :cond_0

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getPositionHandle()I

    move-result v0

    .line 41
    .local v0, "positionHandle":I
    const/4 v1, 0x3

    const/16 v2, 0x1406

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 42
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method
