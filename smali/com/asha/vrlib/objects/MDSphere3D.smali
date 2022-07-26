.class public Lcom/asha/vrlib/objects/MDSphere3D;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDSphere3D.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDSphere3D"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    return-void
.end method

.method private static generateSphere(FIILcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 34
    .param p0, "radius"    # F
    .param p1, "rings"    # I
    .param p2, "sectors"    # I
    .param p3, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 31
    const v4, 0x40490fdb    # (float)Math.PI

    .line 32
    .local v4, "PI":F
    const v5, 0x3fc90fdb

    .line 34
    .local v5, "PI_2":F
    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v6, v30, v31

    .line 35
    .local v6, "R":F
    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v7, v30, v31

    .line 39
    .local v7, "S":F
    add-int/lit8 v30, p1, 0x1

    add-int/lit8 v31, p2, 0x1

    mul-int v15, v30, v31

    .line 40
    .local v15, "numPoint":I
    mul-int/lit8 v30, v15, 0x3

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 41
    .local v26, "vertexs":[F
    mul-int/lit8 v30, v15, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 42
    .local v22, "texcoords":[F
    mul-int/lit8 v30, v15, 0x6

    move/from16 v0, v30

    new-array v14, v0, [S

    .line 44
    .local v14, "indices":[S
    const/16 v19, 0x0

    .local v19, "t":I
    const/16 v23, 0x0

    .line 45
    .local v23, "v":I
    const/16 v16, 0x0

    .local v16, "r":S
    :goto_0
    add-int/lit8 v30, p1, 0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 46
    const/16 v17, 0x0

    .local v17, "s":S
    move/from16 v24, v23

    .end local v23    # "v":I
    .local v24, "v":I
    move/from16 v20, v19

    .end local v19    # "t":I
    .local v20, "t":I
    :goto_1
    add-int/lit8 v30, p2, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 47
    const v30, 0x40c90fdb

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    mul-float v30, v30, v7

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    const v32, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v6

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v27, v0

    .line 48
    .local v27, "x":F
    const v30, -0x4036f025

    const v31, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    mul-float v31, v31, v6

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v28, v0

    .line 49
    .local v28, "y":F
    const v30, 0x40c90fdb

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    mul-float v30, v30, v7

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    const v32, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v6

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    .line 51
    .local v29, "z":F
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "t":I
    .restart local v19    # "t":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v7

    aput v30, v22, v20

    .line 52
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "t":I
    .restart local v20    # "t":I
    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v6

    sub-float v30, v30, v31

    aput v30, v22, v19

    .line 54
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "v":I
    .restart local v23    # "v":I
    mul-float v30, v27, p0

    aput v30, v26, v24

    .line 55
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "v":I
    .restart local v24    # "v":I
    mul-float v30, v28, p0

    aput v30, v26, v23

    .line 56
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "v":I
    .restart local v23    # "v":I
    mul-float v30, v29, p0

    aput v30, v26, v24

    .line 46
    add-int/lit8 v30, v17, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v24, v23

    .end local v23    # "v":I
    .restart local v24    # "v":I
    goto/16 :goto_1

    .line 45
    .end local v27    # "x":F
    .end local v28    # "y":F
    .end local v29    # "z":F
    :cond_0
    add-int/lit8 v30, v16, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v23, v24

    .end local v24    # "v":I
    .restart local v23    # "v":I
    move/from16 v19, v20

    .end local v20    # "t":I
    .restart local v19    # "t":I
    goto/16 :goto_0

    .line 60
    .end local v17    # "s":S
    :cond_1
    const/4 v10, 0x0

    .line 61
    .local v10, "counter":I
    add-int/lit8 v18, p2, 0x1

    .line 62
    .local v18, "sectorsPlusOne":I
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 63
    const/16 v17, 0x0

    .restart local v17    # "s":S
    move v11, v10

    .end local v10    # "counter":I
    .local v11, "counter":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 64
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "counter":I
    .restart local v10    # "counter":I
    mul-int v30, v16, v18

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, v14, v11

    .line 65
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "counter":I
    .restart local v11    # "counter":I
    add-int/lit8 v30, v16, 0x1

    mul-int v30, v30, v18

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, v14, v10

    .line 66
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "counter":I
    .restart local v10    # "counter":I
    mul-int v30, v16, v18

    add-int/lit8 v31, v17, 0x1

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, v14, v11

    .line 67
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "counter":I
    .restart local v11    # "counter":I
    mul-int v30, v16, v18

    add-int/lit8 v31, v17, 0x1

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, v14, v10

    .line 68
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "counter":I
    .restart local v10    # "counter":I
    add-int/lit8 v30, v16, 0x1

    mul-int v30, v30, v18

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, v14, v11

    .line 69
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "counter":I
    .restart local v11    # "counter":I
    add-int/lit8 v30, v16, 0x1

    mul-int v30, v30, v18

    add-int/lit8 v31, v17, 0x1

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, v14, v10

    .line 63
    add-int/lit8 v30, v17, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v17, v0

    goto :goto_3

    .line 62
    :cond_2
    add-int/lit8 v30, v16, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v16, v0

    move v10, v11

    .end local v11    # "counter":I
    .restart local v10    # "counter":I
    goto :goto_2

    .line 74
    .end local v17    # "s":S
    :cond_3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x4

    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 77
    .local v8, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v25

    .line 79
    .local v25, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 80
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x4

    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 85
    .local v9, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v21

    .line 87
    .local v21, "texBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v21 .. v22}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 88
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    array-length v0, v14

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 94
    .local v12, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v13

    .line 96
    .local v13, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v13, v14}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 97
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 100
    const/16 v30, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 101
    const/16 v30, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 102
    const/16 v30, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 103
    const/16 v30, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 104
    array-length v0, v14

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 105
    return-void
.end method

.method private static generateSphere(Lcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 3
    .param p0, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 24
    const/high16 v0, 0x41900000    # 18.0f

    const/16 v1, 0x4b

    const/16 v2, 0x96

    invoke-static {v0, v1, v2, p0}, Lcom/asha/vrlib/objects/MDSphere3D;->generateSphere(FIILcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/asha/vrlib/objects/MDSphere3D;->generateSphere(Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 21
    return-void
.end method
