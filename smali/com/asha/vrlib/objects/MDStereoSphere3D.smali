.class public Lcom/asha/vrlib/objects/MDStereoSphere3D;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDStereoSphere3D.java"


# instance fields
.field private direction:Lcom/asha/vrlib/common/MDDirection;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/common/MDDirection;)V
    .locals 1
    .param p1, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    .line 18
    sget-object v0, Lcom/asha/vrlib/common/MDDirection;->HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

    iput-object v0, p0, Lcom/asha/vrlib/objects/MDStereoSphere3D;->direction:Lcom/asha/vrlib/common/MDDirection;

    .line 21
    iput-object p1, p0, Lcom/asha/vrlib/objects/MDStereoSphere3D;->direction:Lcom/asha/vrlib/common/MDDirection;

    .line 22
    return-void
.end method

.method private static generateSphere(FIILcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/common/MDDirection;)V
    .locals 36
    .param p0, "radius"    # F
    .param p1, "rings"    # I
    .param p2, "sectors"    # I
    .param p3, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;
    .param p4, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 34
    const v4, 0x40490fdb    # (float)Math.PI

    .line 35
    .local v4, "PI":F
    const v5, 0x3fc90fdb

    .line 37
    .local v5, "PI_2":F
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v6, v32, v33

    .line 38
    .local v6, "R":F
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v7, v32, v33

    .line 42
    .local v7, "S":F
    add-int/lit8 v32, p1, 0x1

    add-int/lit8 v33, p2, 0x1

    mul-int v16, v32, v33

    .line 43
    .local v16, "numPoint":I
    mul-int/lit8 v32, v16, 0x3

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 44
    .local v28, "vertexs":[F
    mul-int/lit8 v32, v16, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 45
    .local v23, "texcoords":[F
    mul-int/lit8 v32, v16, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 46
    .local v24, "texcoords2":[F
    mul-int/lit8 v32, v16, 0x6

    move/from16 v0, v32

    new-array v15, v0, [S

    .line 48
    .local v15, "indices":[S
    const/16 v20, 0x0

    .local v20, "t":I
    const/16 v25, 0x0

    .line 49
    .local v25, "v":I
    const/16 v17, 0x0

    .local v17, "r":S
    :goto_0
    add-int/lit8 v32, p1, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    .line 50
    const/16 v18, 0x0

    .local v18, "s":S
    move/from16 v26, v25

    .end local v25    # "v":I
    .local v26, "v":I
    :goto_1
    add-int/lit8 v32, p2, 0x1

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 51
    const v32, 0x40c90fdb

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    const v34, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    mul-float v34, v34, v6

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v29, v0

    .line 52
    .local v29, "x":F
    const v32, -0x4036f025

    const v33, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v33, v33, v34

    mul-float v33, v33, v6

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v30, v0

    .line 53
    .local v30, "y":F
    const v32, 0x40c90fdb

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    const v34, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    mul-float v34, v34, v6

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    .line 55
    .local v31, "z":F
    sget-object v32, Lcom/asha/vrlib/common/MDDirection;->VERTICAL:Lcom/asha/vrlib/common/MDDirection;

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 56
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v7

    aput v32, v23, v20

    .line 57
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v7

    aput v32, v24, v20

    .line 58
    add-int/lit8 v20, v20, 0x1

    .line 60
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v6

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    sub-float v32, v32, v33

    aput v32, v23, v20

    .line 61
    const/high16 v32, 0x3f000000    # 0.5f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v6

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    sub-float v32, v32, v33

    aput v32, v24, v20

    .line 62
    add-int/lit8 v20, v20, 0x1

    .line 73
    :goto_2
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "v":I
    .restart local v25    # "v":I
    mul-float v32, v29, p0

    aput v32, v28, v26

    .line 74
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "v":I
    .restart local v26    # "v":I
    mul-float v32, v30, p0

    aput v32, v28, v25

    .line 75
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "v":I
    .restart local v25    # "v":I
    mul-float v32, v31, p0

    aput v32, v28, v26

    .line 50
    add-int/lit8 v32, v18, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v18, v0

    move/from16 v26, v25

    .end local v25    # "v":I
    .restart local v26    # "v":I
    goto/16 :goto_1

    .line 64
    :cond_0
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v7

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    aput v32, v23, v20

    .line 65
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v7

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v32, v32, v33

    aput v32, v24, v20

    .line 66
    add-int/lit8 v20, v20, 0x1

    .line 68
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v6

    sub-float v32, v32, v33

    aput v32, v23, v20

    .line 69
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v6

    sub-float v32, v32, v33

    aput v32, v24, v20

    .line 70
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 49
    .end local v29    # "x":F
    .end local v30    # "y":F
    .end local v31    # "z":F
    :cond_1
    add-int/lit8 v32, v17, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v25, v26

    .end local v26    # "v":I
    .restart local v25    # "v":I
    goto/16 :goto_0

    .line 79
    .end local v18    # "s":S
    :cond_2
    const/4 v11, 0x0

    .line 80
    .local v11, "counter":I
    add-int/lit8 v19, p2, 0x1

    .line 81
    .local v19, "sectorsPlusOne":I
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 82
    const/16 v18, 0x0

    .restart local v18    # "s":S
    move v12, v11

    .end local v11    # "counter":I
    .local v12, "counter":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 83
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "counter":I
    .restart local v11    # "counter":I
    mul-int v32, v17, v19

    add-int v32, v32, v18

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v15, v12

    .line 84
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "counter":I
    .restart local v12    # "counter":I
    add-int/lit8 v32, v17, 0x1

    mul-int v32, v32, v19

    add-int v32, v32, v18

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v15, v11

    .line 85
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "counter":I
    .restart local v11    # "counter":I
    mul-int v32, v17, v19

    add-int/lit8 v33, v18, 0x1

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v15, v12

    .line 86
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "counter":I
    .restart local v12    # "counter":I
    mul-int v32, v17, v19

    add-int/lit8 v33, v18, 0x1

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v15, v11

    .line 87
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "counter":I
    .restart local v11    # "counter":I
    add-int/lit8 v32, v17, 0x1

    mul-int v32, v32, v19

    add-int v32, v32, v18

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v15, v12

    .line 88
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "counter":I
    .restart local v12    # "counter":I
    add-int/lit8 v32, v17, 0x1

    mul-int v32, v32, v19

    add-int/lit8 v33, v18, 0x1

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v15, v11

    .line 82
    add-int/lit8 v32, v18, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v18, v0

    goto :goto_4

    .line 81
    :cond_3
    add-int/lit8 v32, v17, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v17, v0

    move v11, v12

    .end local v12    # "counter":I
    .restart local v11    # "counter":I
    goto :goto_3

    .line 93
    .end local v18    # "s":S
    :cond_4
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 96
    .local v8, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v27

    .line 98
    .local v27, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v27 .. v28}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 99
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 104
    .local v9, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v21

    .line 106
    .local v21, "texBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 107
    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 112
    .local v10, "cc2":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v22

    .line 114
    .local v22, "texBuffer2":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 115
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    array-length v0, v15

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 121
    .local v13, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .line 123
    .local v14, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v14, v15}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 124
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 127
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 128
    const/16 v32, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 129
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 130
    const/16 v32, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 131
    array-length v0, v15

    move/from16 v32, v0

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 132
    return-void
.end method

.method private static generateSphere(Lcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/common/MDDirection;)V
    .locals 3
    .param p0, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;
    .param p1, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 30
    const/high16 v0, 0x41900000    # 18.0f

    const/16 v1, 0x4b

    const/16 v2, 0x96

    invoke-static {v0, v1, v2, p0, p1}, Lcom/asha/vrlib/objects/MDStereoSphere3D;->generateSphere(FIILcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/common/MDDirection;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDStereoSphere3D;->direction:Lcom/asha/vrlib/common/MDDirection;

    invoke-static {p0, v0}, Lcom/asha/vrlib/objects/MDStereoSphere3D;->generateSphere(Lcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/common/MDDirection;)V

    .line 27
    return-void
.end method
