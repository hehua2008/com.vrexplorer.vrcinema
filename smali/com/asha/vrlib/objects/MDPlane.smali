.class public Lcom/asha/vrlib/objects/MDPlane;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDPlane.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDPlane"


# instance fields
.field private mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

.field private mPrevRatio:F

.field private mSize:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    const/16 v1, 0xd1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, v1, v2}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;-><init>(ILandroid/graphics/RectF;)V

    invoke-direct {p0, v0, p1}, Lcom/asha/vrlib/objects/MDPlane;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;Landroid/graphics/RectF;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;)V
    .locals 3
    .param p1, "calculator"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0}, Lcom/asha/vrlib/objects/MDPlane;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;Landroid/graphics/RectF;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "calculator"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;
    .param p2, "size"    # Landroid/graphics/RectF;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/asha/vrlib/objects/MDPlane;->mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    .line 31
    iput-object p2, p0, Lcom/asha/vrlib/objects/MDPlane;->mSize:Landroid/graphics/RectF;

    .line 32
    return-void
.end method

.method private generateMesh(Lcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 27
    .param p1, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumRow()I

    move-result v18

    .line 127
    .local v18, "rows":I
    invoke-direct/range {p0 .. p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumColumn()I

    move-result v5

    .line 130
    .local v5, "columns":I
    invoke-direct/range {p0 .. p0}, Lcom/asha/vrlib/objects/MDPlane;->generateVertex()[F

    move-result-object v24

    .line 131
    .local v24, "vertexs":[F
    invoke-direct/range {p0 .. p0}, Lcom/asha/vrlib/objects/MDPlane;->generateTexcoords()[F

    move-result-object v22

    .line 132
    .local v22, "texcoords":[F
    invoke-direct/range {p0 .. p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumPoint()I

    move-result v25

    mul-int/lit8 v25, v25, 0x6

    move/from16 v0, v25

    new-array v10, v0, [S

    .line 135
    .local v10, "indices":[S
    const/4 v6, 0x0

    .line 136
    .local v6, "counter":I
    add-int/lit8 v20, v5, 0x1

    .line 137
    .local v20, "sectorsPlusOne":I
    const/16 v17, 0x0

    .local v17, "r":S
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 138
    const/16 v19, 0x0

    .local v19, "s":S
    move v7, v6

    .end local v6    # "counter":I
    .local v7, "counter":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v5, :cond_0

    .line 139
    mul-int v25, v17, v20

    add-int/lit8 v26, v19, 0x1

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v11, v0

    .line 140
    .local v11, "k0":S
    add-int/lit8 v25, v17, 0x1

    mul-int v25, v25, v20

    add-int v25, v25, v19

    move/from16 v0, v25

    int-to-short v12, v0

    .line 141
    .local v12, "k1":S
    mul-int v25, v17, v20

    add-int v25, v25, v19

    move/from16 v0, v25

    int-to-short v13, v0

    .line 142
    .local v13, "k2":S
    mul-int v25, v17, v20

    add-int/lit8 v26, v19, 0x1

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v14, v0

    .line 143
    .local v14, "k3":S
    add-int/lit8 v25, v17, 0x1

    mul-int v25, v25, v20

    add-int/lit8 v26, v19, 0x1

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v15, v0

    .line 144
    .local v15, "k4":S
    add-int/lit8 v25, v17, 0x1

    mul-int v25, v25, v20

    add-int v25, v25, v19

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v16, v0

    .line 146
    .local v16, "k5":S
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    aput-short v11, v10, v7

    .line 147
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    aput-short v12, v10, v6

    .line 148
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    aput-short v13, v10, v7

    .line 149
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    aput-short v14, v10, v6

    .line 150
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    aput-short v15, v10, v7

    .line 151
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    aput-short v16, v10, v6

    .line 138
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v19, v0

    goto :goto_1

    .line 137
    .end local v11    # "k0":S
    .end local v12    # "k1":S
    .end local v13    # "k2":S
    .end local v14    # "k3":S
    .end local v15    # "k4":S
    .end local v16    # "k5":S
    :cond_0
    add-int/lit8 v25, v17, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v17, v0

    move v6, v7

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    goto :goto_0

    .line 156
    .end local v19    # "s":S
    :cond_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x4

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 159
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v23

    .line 161
    .local v23, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v23 .. v24}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 162
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x4

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 167
    .local v4, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v21

    .line 169
    .local v21, "texBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v21 .. v22}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 170
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    array-length v0, v10

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 176
    .local v8, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 177
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v9

    .line 178
    .local v9, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v9, v10}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 179
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 182
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 183
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 184
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 185
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 186
    array-length v0, v10

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 187
    return-void
.end method

.method private generateTexcoords()[F
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 106
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumPoint()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    new-array v8, v9, [F

    .line 108
    .local v8, "texcoords":[F
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumRow()I

    move-result v4

    .line 109
    .local v4, "rows":I
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumColumn()I

    move-result v2

    .line 110
    .local v2, "columns":I
    int-to-float v9, v4

    div-float v0, v10, v9

    .line 111
    .local v0, "R":F
    int-to-float v9, v2

    div-float v1, v10, v9

    .line 114
    .local v1, "S":F
    const/4 v6, 0x0

    .line 115
    .local v6, "t":I
    const/4 v3, 0x0

    .local v3, "r":S
    :goto_0
    add-int/lit8 v9, v4, 0x1

    if-ge v3, v9, :cond_1

    .line 116
    const/4 v5, 0x0

    .local v5, "s":S
    move v7, v6

    .end local v6    # "t":I
    .local v7, "t":I
    :goto_1
    add-int/lit8 v9, v2, 0x1

    if-ge v5, v9, :cond_0

    .line 117
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "t":I
    .restart local v6    # "t":I
    int-to-float v9, v5

    mul-float/2addr v9, v1

    aput v9, v8, v7

    .line 118
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "t":I
    .restart local v7    # "t":I
    int-to-float v9, v3

    mul-float/2addr v9, v0

    aput v9, v8, v6

    .line 116
    add-int/lit8 v9, v5, 0x1

    int-to-short v5, v9

    goto :goto_1

    .line 115
    :cond_0
    add-int/lit8 v9, v3, 0x1

    int-to-short v3, v9

    move v6, v7

    .end local v7    # "t":I
    .restart local v6    # "t":I
    goto :goto_0

    .line 122
    .end local v5    # "s":S
    :cond_1
    return-object v8
.end method

.method private generateVertex()[F
    .locals 14

    .prologue
    .line 80
    const/4 v11, 0x0

    .line 81
    .local v11, "z":I
    iget-object v12, p0, Lcom/asha/vrlib/objects/MDPlane;->mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-virtual {v12}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->calculate()V

    .line 82
    iget-object v12, p0, Lcom/asha/vrlib/objects/MDPlane;->mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-virtual {v12}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getTextureRatio()F

    move-result v12

    iput v12, p0, Lcom/asha/vrlib/objects/MDPlane;->mPrevRatio:F

    .line 83
    iget-object v12, p0, Lcom/asha/vrlib/objects/MDPlane;->mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-virtual {v12}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getTextureWidth()F

    move-result v12

    iget-object v13, p0, Lcom/asha/vrlib/objects/MDPlane;->mSize:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float v10, v12, v13

    .line 84
    .local v10, "width":F
    iget-object v12, p0, Lcom/asha/vrlib/objects/MDPlane;->mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-virtual {v12}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getTextureHeight()F

    move-result v12

    iget-object v13, p0, Lcom/asha/vrlib/objects/MDPlane;->mSize:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float v3, v12, v13

    .line 86
    .local v3, "height":F
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumPoint()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    new-array v9, v12, [F

    .line 87
    .local v9, "vertexs":[F
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumRow()I

    move-result v5

    .line 88
    .local v5, "rows":I
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumColumn()I

    move-result v2

    .line 89
    .local v2, "columns":I
    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v5

    div-float v0, v12, v13

    .line 90
    .local v0, "R":F
    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v2

    div-float v1, v12, v13

    .line 93
    .local v1, "S":F
    const/4 v7, 0x0

    .line 94
    .local v7, "v":I
    const/4 v4, 0x0

    .local v4, "r":S
    :goto_0
    add-int/lit8 v12, v5, 0x1

    if-ge v4, v12, :cond_1

    .line 95
    const/4 v6, 0x0

    .local v6, "s":S
    move v8, v7

    .end local v7    # "v":I
    .local v8, "v":I
    :goto_1
    add-int/lit8 v12, v2, 0x1

    if-ge v6, v12, :cond_0

    .line 96
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "v":I
    .restart local v7    # "v":I
    int-to-float v12, v6

    mul-float/2addr v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    mul-float/2addr v12, v10

    aput v12, v9, v8

    .line 97
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "v":I
    .restart local v8    # "v":I
    int-to-float v12, v4

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    mul-float/2addr v12, v3

    aput v12, v9, v7

    .line 98
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "v":I
    .restart local v7    # "v":I
    int-to-float v12, v11

    aput v12, v9, v8

    .line 95
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    move v8, v7

    .end local v7    # "v":I
    .restart local v8    # "v":I
    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v12, v4, 0x1

    int-to-short v4, v12

    move v7, v8

    .end local v8    # "v":I
    .restart local v7    # "v":I
    goto :goto_0

    .line 102
    .end local v6    # "s":S
    :cond_1
    return-object v9
.end method

.method private getNumColumn()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method private getNumPoint()I
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumRow()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->getNumColumn()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getNumRow()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p0}, Lcom/asha/vrlib/objects/MDPlane;->generateMesh(Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 45
    return-void
.end method

.method public uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V
    .locals 6
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getVerticesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 77
    :goto_0
    return-void

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    iget-object v4, p0, Lcom/asha/vrlib/objects/MDPlane;->mCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-virtual {v4}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getTextureRatio()F

    move-result v2

    .line 56
    .local v2, "ratio":F
    iget v4, p0, Lcom/asha/vrlib/objects/MDPlane;->mPrevRatio:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDPlane;->generateVertex()[F

    move-result-object v3

    .line 61
    .local v3, "vertexs":[F
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 66
    .local v1, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 67
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    invoke-virtual {p0, v5, v1}, Lcom/asha/vrlib/objects/MDPlane;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 70
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/asha/vrlib/objects/MDPlane;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 72
    iput v2, p0, Lcom/asha/vrlib/objects/MDPlane;->mPrevRatio:F

    .line 76
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buffer":Ljava/nio/FloatBuffer;
    .end local v2    # "ratio":F
    .end local v3    # "vertexs":[F
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    goto :goto_0
.end method
