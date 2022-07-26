.class public Lcom/asha/vrlib/objects/MDMultiFisheye3D;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDMultiFisheye3D.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDMultiFisheye3D"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    return-void
.end method

.method private static generateSphere(FIILcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 37
    .param p0, "radius"    # F
    .param p1, "rings"    # I
    .param p2, "sectors"    # I
    .param p3, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 25
    const v4, 0x40490fdb    # (float)Math.PI

    .line 26
    .local v4, "PI":F
    const v5, 0x3fc90fdb

    .line 28
    .local v5, "PI_2":F
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v6, v32, v33

    .line 29
    .local v6, "R":F
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v7, v32, v33

    .line 33
    .local v7, "S":F
    add-int/lit8 v32, p1, 0x1

    add-int/lit8 v33, p2, 0x1

    mul-int v18, v32, v33

    .line 34
    .local v18, "numPoint":I
    mul-int/lit8 v32, v18, 0x3

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 35
    .local v28, "vertexs":[F
    mul-int/lit8 v32, v18, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 36
    .local v24, "texcoords":[F
    mul-int/lit8 v32, v18, 0x6

    move/from16 v0, v32

    new-array v0, v0, [S

    move-object/from16 v16, v0

    .line 38
    .local v16, "indices":[S
    const/16 v22, 0x0

    .local v22, "t":I
    const/16 v25, 0x0

    .line 39
    .local v25, "v":I
    const/16 v19, 0x0

    .local v19, "r":S
    :goto_0
    add-int/lit8 v32, p1, 0x1

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    .line 40
    const/16 v20, 0x0

    .local v20, "s":S
    move/from16 v26, v25

    .end local v25    # "v":I
    .local v26, "v":I
    :goto_1
    add-int/lit8 v32, p2, 0x1

    move/from16 v0, v20

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 41
    const v32, 0x40c90fdb

    move/from16 v0, v20

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

    move/from16 v0, v19

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

    .line 42
    .local v29, "x":F
    const v32, -0x4036f025

    const v33, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v19

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

    .line 43
    .local v30, "y":F
    const v32, 0x40c90fdb

    move/from16 v0, v20

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

    move/from16 v0, v19

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

    .line 45
    .local v31, "z":F
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "v":I
    .restart local v25    # "v":I
    mul-float v32, v29, p0

    aput v32, v28, v26

    .line 46
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "v":I
    .restart local v26    # "v":I
    mul-float v32, v30, p0

    aput v32, v28, v25

    .line 47
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "v":I
    .restart local v25    # "v":I
    mul-float v32, v31, p0

    aput v32, v28, v26

    .line 50
    mul-int/lit8 v32, v22, 0x2

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 52
    const v32, 0x40c90fdb

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    float-to-double v0, v6

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide v34, 0x3fe4ccccc0000000L    # 0.6499999761581421

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v8, v32, v33

    .line 53
    .local v8, "a":F
    const v32, 0x40c90fdb

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    float-to-double v0, v6

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide v34, 0x3fe4ccccc0000000L    # 0.6499999761581421

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v9, v32, v33

    .line 55
    .local v9, "b":F
    mul-int/lit8 v32, v22, 0x2

    aput v8, v24, v32

    .line 56
    mul-int/lit8 v32, v22, 0x2

    add-int/lit8 v32, v32, 0x1

    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v33, v33, v9

    aput v33, v24, v32

    .line 65
    :goto_2
    add-int/lit8 v22, v22, 0x1

    .line 40
    add-int/lit8 v32, v20, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v26, v25

    .end local v25    # "v":I
    .restart local v26    # "v":I
    goto/16 :goto_1

    .line 59
    .end local v8    # "a":F
    .end local v9    # "b":F
    .end local v26    # "v":I
    .restart local v25    # "v":I
    :cond_0
    const v32, 0x40c90fdb

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    const/high16 v34, 0x3f800000    # 1.0f

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v6

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide v34, 0x3fe4ccccc0000000L    # 0.6499999761581421

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v8, v32, v33

    .line 60
    .restart local v8    # "a":F
    const v32, 0x40c90fdb

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    const/high16 v34, 0x3f800000    # 1.0f

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v6

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide v34, 0x3fe4ccccc0000000L    # 0.6499999761581421

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v9, v32, v33

    .line 62
    .restart local v9    # "b":F
    mul-int/lit8 v32, v22, 0x2

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v8

    aput v33, v24, v32

    .line 63
    mul-int/lit8 v32, v22, 0x2

    add-int/lit8 v32, v32, 0x1

    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v33, v33, v9

    const/high16 v34, 0x3f000000    # 0.5f

    add-float v33, v33, v34

    aput v33, v24, v32

    goto/16 :goto_2

    .line 39
    .end local v8    # "a":F
    .end local v9    # "b":F
    .end local v25    # "v":I
    .end local v29    # "x":F
    .end local v30    # "y":F
    .end local v31    # "z":F
    .restart local v26    # "v":I
    :cond_1
    add-int/lit8 v32, v19, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v25, v26

    .end local v26    # "v":I
    .restart local v25    # "v":I
    goto/16 :goto_0

    .line 80
    .end local v20    # "s":S
    :cond_2
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 81
    const-string v32, "MDMultiFisheye3D"

    const-string v33, "p %d,"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v32, "MDMultiFisheye3D"

    const-string v33, "v %d, x=%f y=%f z=%f"

    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    mul-int/lit8 v36, v17, 0x3

    aget v36, v28, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    mul-int/lit8 v36, v17, 0x3

    add-int/lit8 v36, v36, 0x1

    aget v36, v28, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x3

    mul-int/lit8 v36, v17, 0x3

    add-int/lit8 v36, v36, 0x2

    aget v36, v28, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v32, "MDMultiFisheye3D"

    const-string v33, "t %d, x=%f y=%f"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    mul-int/lit8 v36, v17, 0x2

    aget v36, v24, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    mul-int/lit8 v36, v17, 0x2

    add-int/lit8 v36, v36, 0x1

    aget v36, v24, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 89
    :cond_3
    const/4 v12, 0x0

    .line 90
    .local v12, "counter":I
    add-int/lit8 v21, p2, 0x1

    .line 91
    .local v21, "sectorsPlusOne":I
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 92
    const/16 v20, 0x0

    .restart local v20    # "s":S
    move v13, v12

    .end local v12    # "counter":I
    .local v13, "counter":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 93
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    mul-int v32, v19, v21

    add-int v32, v32, v20

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v16, v13

    .line 94
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    add-int/lit8 v32, v19, 0x1

    mul-int v32, v32, v21

    add-int v32, v32, v20

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v16, v12

    .line 95
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    mul-int v32, v19, v21

    add-int/lit8 v33, v20, 0x1

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v16, v13

    .line 96
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    mul-int v32, v19, v21

    add-int/lit8 v33, v20, 0x1

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v16, v12

    .line 97
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    add-int/lit8 v32, v19, 0x1

    mul-int v32, v32, v21

    add-int v32, v32, v20

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v16, v13

    .line 98
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    add-int/lit8 v32, v19, 0x1

    mul-int v32, v32, v21

    add-int/lit8 v33, v20, 0x1

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v16, v12

    .line 92
    add-int/lit8 v32, v20, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v20, v0

    goto :goto_5

    .line 91
    :cond_4
    add-int/lit8 v32, v19, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v19, v0

    move v12, v13

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    goto :goto_4

    .line 103
    .end local v20    # "s":S
    :cond_5
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 106
    .local v10, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v27

    .line 108
    .local v27, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v27 .. v28}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 109
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 114
    .local v11, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v23

    .line 116
    .local v23, "texBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v23 .. v24}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 117
    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 123
    .local v14, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    .line 125
    .local v15, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual/range {v15 .. v16}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 126
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 129
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 130
    const/16 v32, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 131
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 132
    const/16 v32, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 133
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 134
    return-void
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/high16 v0, 0x41900000    # 18.0f

    const/16 v1, 0x1d

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2, p0}, Lcom/asha/vrlib/objects/MDMultiFisheye3D;->generateSphere(FIILcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 22
    return-void
.end method
