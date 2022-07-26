.class public Lcom/asha/vrlib/objects/MDDome3D;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDDome3D.java"


# instance fields
.field mDegree:F

.field mIsUpper:Z

.field mPrevRatio:F

.field mTextureSize:Landroid/graphics/RectF;

.field texCoordinates:[F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FZ)V
    .locals 1
    .param p1, "textureSize"    # Landroid/graphics/RectF;
    .param p2, "degree"    # F
    .param p3, "isUpper"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/asha/vrlib/objects/MDDome3D;->mPrevRatio:F

    .line 31
    iput-object p1, p0, Lcom/asha/vrlib/objects/MDDome3D;->mTextureSize:Landroid/graphics/RectF;

    .line 32
    iput p2, p0, Lcom/asha/vrlib/objects/MDDome3D;->mDegree:F

    .line 33
    iput-boolean p3, p0, Lcom/asha/vrlib/objects/MDDome3D;->mIsUpper:Z

    .line 34
    return-void
.end method

.method public static generateDome(FIFZLcom/asha/vrlib/objects/MDDome3D;)V
    .locals 40
    .param p0, "radius"    # F
    .param p1, "sectors"    # I
    .param p2, "degreeY"    # F
    .param p3, "isUpper"    # Z
    .param p4, "object3D"    # Lcom/asha/vrlib/objects/MDDome3D;

    .prologue
    .line 77
    const v4, 0x40490fdb    # (float)Math.PI

    .line 78
    .local v4, "PI":F
    const v5, 0x3fc90fdb

    .line 80
    .local v5, "PI_2":F
    const/high16 v36, 0x43b40000    # 360.0f

    div-float v20, p2, v36

    .line 81
    .local v20, "percent":F
    shr-int/lit8 v22, p1, 0x1

    .line 83
    .local v22, "rings":I
    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v6, v36, v37

    .line 84
    .local v6, "R":F
    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v7, v36, v37

    .line 88
    .local v7, "S":F
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v20

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    add-int/lit8 v17, v36, 0x1

    .line 89
    .local v17, "lenRings":I
    add-int/lit8 v18, p1, 0x1

    .line 90
    .local v18, "lenSectors":I
    mul-int v19, v17, v18

    .line 92
    .local v19, "numPoint":I
    mul-int/lit8 v36, v19, 0x3

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v32, v0

    .line 93
    .local v32, "vertexs":[F
    mul-int/lit8 v36, v19, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .line 94
    .local v27, "texcoords":[F
    mul-int/lit8 v36, v19, 0x6

    move/from16 v0, v36

    new-array v0, v0, [S

    move-object/from16 v16, v0

    .line 96
    .local v16, "indices":[S
    if-eqz p3, :cond_0

    const/16 v28, 0x1

    .line 98
    .local v28, "upper":I
    :goto_0
    const/16 v24, 0x0

    .local v24, "t":I
    const/16 v29, 0x0

    .line 99
    .local v29, "v":I
    const/16 v21, 0x0

    .local v21, "r":S
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 100
    const/16 v23, 0x0

    .local v23, "s":S
    move/from16 v30, v29

    .end local v29    # "v":I
    .local v30, "v":I
    move/from16 v25, v24

    .end local v24    # "t":I
    .local v25, "t":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 101
    const v36, 0x40c90fdb

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    mul-float v36, v36, v7

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    const v38, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v38, v38, v39

    mul-float v38, v38, v6

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v33, v36, v37

    .line 102
    .local v33, "x":F
    const v36, -0x4036f025

    const v37, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    mul-float v37, v37, v6

    add-float v36, v36, v37

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v34, v36, v37

    .line 103
    .local v34, "y":F
    const v36, 0x40c90fdb

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    mul-float v36, v36, v7

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    const v38, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v38, v38, v39

    mul-float v38, v38, v6

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v35, v0

    .line 105
    .local v35, "z":F
    const v36, 0x40c90fdb

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    mul-float v36, v36, v7

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    float-to-double v0, v6

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    const/high16 v37, 0x3f000000    # 0.5f

    add-float v8, v36, v37

    .line 106
    .local v8, "a":F
    const v36, 0x40c90fdb

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    mul-float v36, v36, v7

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    float-to-double v0, v6

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    const/high16 v37, 0x3f000000    # 0.5f

    add-float v9, v36, v37

    .line 108
    .local v9, "b":F
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "t":I
    .restart local v24    # "t":I
    aput v9, v27, v25

    .line 109
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "t":I
    .restart local v25    # "t":I
    aput v8, v27, v24

    .line 111
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "v":I
    .restart local v29    # "v":I
    mul-float v36, v33, p0

    aput v36, v32, v30

    .line 112
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "v":I
    .restart local v30    # "v":I
    mul-float v36, v34, p0

    aput v36, v32, v29

    .line 113
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "v":I
    .restart local v29    # "v":I
    mul-float v36, v35, p0

    aput v36, v32, v30

    .line 100
    add-int/lit8 v36, v23, 0x1

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v23, v0

    move/from16 v30, v29

    .end local v29    # "v":I
    .restart local v30    # "v":I
    goto/16 :goto_2

    .line 96
    .end local v8    # "a":F
    .end local v9    # "b":F
    .end local v21    # "r":S
    .end local v23    # "s":S
    .end local v25    # "t":I
    .end local v28    # "upper":I
    .end local v30    # "v":I
    .end local v33    # "x":F
    .end local v34    # "y":F
    .end local v35    # "z":F
    :cond_0
    const/16 v28, -0x1

    goto/16 :goto_0

    .line 99
    .restart local v21    # "r":S
    .restart local v23    # "s":S
    .restart local v25    # "t":I
    .restart local v28    # "upper":I
    .restart local v30    # "v":I
    :cond_1
    add-int/lit8 v36, v21, 0x1

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v29, v30

    .end local v30    # "v":I
    .restart local v29    # "v":I
    move/from16 v24, v25

    .end local v25    # "t":I
    .restart local v24    # "t":I
    goto/16 :goto_1

    .line 117
    .end local v23    # "s":S
    :cond_2
    const/4 v12, 0x0

    .line 118
    .local v12, "counter":I
    const/16 v21, 0x0

    :goto_3
    add-int/lit8 v36, v17, -0x1

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    .line 119
    const/16 v23, 0x0

    .restart local v23    # "s":S
    move v13, v12

    .end local v12    # "counter":I
    .local v13, "counter":I
    :goto_4
    add-int/lit8 v36, v18, -0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_3

    .line 120
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    mul-int v36, v21, v18

    add-int v36, v36, v23

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v16, v13

    .line 121
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    add-int/lit8 v36, v21, 0x1

    mul-int v36, v36, v18

    add-int v36, v36, v23

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v16, v12

    .line 122
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    mul-int v36, v21, v18

    add-int/lit8 v37, v23, 0x1

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v16, v13

    .line 123
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    mul-int v36, v21, v18

    add-int/lit8 v37, v23, 0x1

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v16, v12

    .line 124
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    add-int/lit8 v36, v21, 0x1

    mul-int v36, v36, v18

    add-int v36, v36, v23

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v16, v13

    .line 125
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    add-int/lit8 v36, v21, 0x1

    mul-int v36, v36, v18

    add-int/lit8 v37, v23, 0x1

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v16, v12

    .line 119
    add-int/lit8 v36, v23, 0x1

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v23, v0

    goto :goto_4

    .line 118
    :cond_3
    add-int/lit8 v36, v21, 0x1

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v21, v0

    move v12, v13

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    goto :goto_3

    .line 130
    .end local v23    # "s":S
    :cond_4
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x4

    invoke-static/range {v36 .. v36}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 133
    .local v10, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v31

    .line 135
    .local v31, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v31 .. v32}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 136
    const/16 v36, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x4

    invoke-static/range {v36 .. v36}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 141
    .local v11, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v26

    .line 143
    .local v26, "texBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v26 .. v27}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 144
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    invoke-static/range {v36 .. v36}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 150
    .local v14, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    .line 152
    .local v15, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual/range {v15 .. v16}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 153
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/asha/vrlib/objects/MDDome3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 156
    const/16 v36, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDDome3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 157
    const/16 v36, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDDome3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 158
    const/16 v36, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v36

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDDome3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 159
    const/16 v36, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v36

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDDome3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 160
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p4

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDDome3D;->setNumIndices(I)V

    .line 162
    move-object/from16 v0, v27

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/asha/vrlib/objects/MDDome3D;->texCoordinates:[F

    .line 163
    return-void
.end method

.method private static generateDome(FZLcom/asha/vrlib/objects/MDDome3D;)V
    .locals 2
    .param p0, "degree"    # F
    .param p1, "isUpper"    # Z
    .param p2, "object3D"    # Lcom/asha/vrlib/objects/MDDome3D;

    .prologue
    .line 73
    const/high16 v0, 0x41900000    # 18.0f

    const/16 v1, 0x96

    invoke-static {v0, v1, p0, p1, p2}, Lcom/asha/vrlib/objects/MDDome3D;->generateDome(FIFZLcom/asha/vrlib/objects/MDDome3D;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iget v0, p0, Lcom/asha/vrlib/objects/MDDome3D;->mDegree:F

    iget-boolean v1, p0, Lcom/asha/vrlib/objects/MDDome3D;->mIsUpper:Z

    invoke-static {v0, v1, p0}, Lcom/asha/vrlib/objects/MDDome3D;->generateDome(FZLcom/asha/vrlib/objects/MDDome3D;)V

    .line 70
    return-void
.end method

.method public uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V
    .locals 11
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;
    .param p2, "index"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 38
    invoke-super {p0, p2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getTexCoordinateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    if-nez v6, :cond_0

    .line 65
    :goto_0
    return-void

    .line 42
    :cond_0
    if-nez p2, :cond_2

    .line 43
    iget-object v6, p0, Lcom/asha/vrlib/objects/MDDome3D;->mTextureSize:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/asha/vrlib/objects/MDDome3D;->mTextureSize:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v3, v6, v7

    .line 44
    .local v3, "ratio":F
    iget v6, p0, Lcom/asha/vrlib/objects/MDDome3D;->mPrevRatio:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_2

    .line 45
    iget-object v6, p0, Lcom/asha/vrlib/objects/MDDome3D;->texCoordinates:[F

    array-length v4, v6

    .line 46
    .local v4, "size":I
    new-array v5, v4, [F

    .line 47
    .local v5, "tmp":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 48
    iget-object v6, p0, Lcom/asha/vrlib/objects/MDDome3D;->texCoordinates:[F

    aget v6, v6, v2

    sub-float/2addr v6, v9

    div-float/2addr v6, v3

    add-float/2addr v6, v9

    aput v6, v5, v2

    .line 49
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/asha/vrlib/objects/MDDome3D;->texCoordinates:[F

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 47
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 52
    :cond_1
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 54
    .local v1, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 56
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 57
    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    invoke-virtual {p0, v10, v0}, Lcom/asha/vrlib/objects/MDDome3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 59
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/asha/vrlib/objects/MDDome3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 60
    iput v3, p0, Lcom/asha/vrlib/objects/MDDome3D;->mPrevRatio:F

    .line 64
    .end local v0    # "buffer":Ljava/nio/FloatBuffer;
    .end local v1    # "cc":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "ratio":F
    .end local v4    # "size":I
    .end local v5    # "tmp":[F
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    goto :goto_0
.end method
