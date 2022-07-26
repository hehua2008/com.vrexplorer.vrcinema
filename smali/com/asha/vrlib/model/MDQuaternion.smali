.class public Lcom/asha/vrlib/model/MDQuaternion;
.super Ljava/lang/Object;
.source "MDQuaternion.java"


# instance fields
.field private final q:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    .line 98
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->idt()V

    .line 99
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # F
    .param p4, "x3"    # F

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    .line 91
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 92
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 94
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 95
    return-void
.end method

.method public static calcAngle([F[F)F
    .locals 4
    .param p0, "v1"    # [F
    .param p1, "v2"    # [F

    .prologue
    .line 79
    invoke-static {p0}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v0

    .line 80
    .local v0, "vec1":[F
    invoke-static {p1}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v1

    .line 81
    .local v1, "vec2":[F
    invoke-static {v0, v1}, Lcom/asha/vrlib/model/MDQuaternion;->dot([F[F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static calcAxis([F[F)[F
    .locals 3
    .param p0, "v1"    # [F
    .param p1, "v2"    # [F

    .prologue
    .line 85
    invoke-static {p0}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v0

    .line 86
    .local v0, "vec1":[F
    invoke-static {p1}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v1

    .line 87
    .local v1, "vec2":[F
    invoke-static {v0, v1}, Lcom/asha/vrlib/model/MDQuaternion;->cross([F[F)[F

    move-result-object v2

    invoke-static {v2}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v2

    return-object v2
.end method

.method private static cross([F[F)[F
    .locals 9
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    aget v3, p0, v7

    aget v4, p1, v8

    mul-float/2addr v3, v4

    aget v4, p1, v7

    aget v5, p0, v8

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 64
    .local v0, "out0":F
    aget v3, p0, v8

    aget v4, p1, v6

    mul-float/2addr v3, v4

    aget v4, p1, v8

    aget v5, p0, v6

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 65
    .local v1, "out1":F
    aget v3, p0, v6

    aget v4, p1, v7

    mul-float/2addr v3, v4

    aget v4, p1, v6

    aget v5, p0, v7

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 66
    .local v2, "out2":F
    const/4 v3, 0x3

    new-array v3, v3, [F

    aput v0, v3, v6

    aput v1, v3, v7

    aput v2, v3, v8

    return-object v3
.end method

.method private static dot([F[F)F
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static normal([F)[F
    .locals 7
    .param p0, "a"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-static {p0, p0}, Lcom/asha/vrlib/model/MDQuaternion;->dot([F[F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 75
    .local v0, "norm":F
    const/4 v1, 0x3

    new-array v1, v1, [F

    aget v2, p0, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    aget v2, p0, v5

    div-float/2addr v2, v0

    aput v2, v1, v5

    aget v2, p0, v6

    div-float/2addr v2, v0

    aput v2, v1, v6

    return-object v1
.end method

.method private set(FFFF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 33
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 35
    iget-object v0, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 36
    return-void
.end method

.method private set(F[F)V
    .locals 8
    .param p1, "angle"    # F
    .param p2, "axis"    # [F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 47
    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    div-float v2, p1, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v5

    .line 48
    div-float v1, p1, v4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 49
    .local v0, "sin":F
    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, p2, v5

    mul-float/2addr v2, v0

    aput v2, v1, v6

    .line 50
    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, p2, v6

    mul-float/2addr v2, v0

    aput v2, v1, v7

    .line 51
    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v2, 0x3

    aget v3, p2, v7

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 52
    return-void
.end method

.method private set([F[F)V
    .locals 6
    .param p1, "v1"    # [F
    .param p2, "v2"    # [F

    .prologue
    .line 39
    invoke-static {p1}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v2

    .line 40
    .local v2, "vec1":[F
    invoke-static {p2}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v3

    .line 41
    .local v3, "vec2":[F
    invoke-static {v2, v3}, Lcom/asha/vrlib/model/MDQuaternion;->cross([F[F)[F

    move-result-object v4

    invoke-static {v4}, Lcom/asha/vrlib/model/MDQuaternion;->normal([F)[F

    move-result-object v1

    .line 42
    .local v1, "axis":[F
    invoke-static {v2, v3}, Lcom/asha/vrlib/model/MDQuaternion;->dot([F[F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 43
    .local v0, "angle":F
    invoke-direct {p0, v0, v1}, Lcom/asha/vrlib/model/MDQuaternion;->set(F[F)V

    .line 44
    return-void
.end method

.method private setFromAxes(ZFFFFFFFFF)V
    .locals 16
    .param p1, "normalizeAxes"    # Z
    .param p2, "xx"    # F
    .param p3, "xy"    # F
    .param p4, "xz"    # F
    .param p5, "yx"    # F
    .param p6, "yy"    # F
    .param p7, "yz"    # F
    .param p8, "zx"    # F
    .param p9, "zy"    # F
    .param p10, "zz"    # F

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p4}, Lcom/asha/vrlib/model/MDVector3D;->len(FFF)F

    move-result v12

    div-float v2, v11, v12

    .line 234
    .local v2, "lx":F
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {p5 .. p7}, Lcom/asha/vrlib/model/MDVector3D;->len(FFF)F

    move-result v12

    div-float v3, v11, v12

    .line 235
    .local v3, "ly":F
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {p8 .. p10}, Lcom/asha/vrlib/model/MDVector3D;->len(FFF)F

    move-result v12

    div-float v4, v11, v12

    .line 236
    .local v4, "lz":F
    mul-float p2, p2, v2

    .line 237
    mul-float p3, p3, v2

    .line 238
    mul-float p4, p4, v2

    .line 239
    mul-float p5, p5, v3

    .line 240
    mul-float p6, p6, v3

    .line 241
    mul-float p7, p7, v3

    .line 242
    mul-float p8, p8, v4

    .line 243
    mul-float p9, p9, v4

    .line 244
    mul-float p10, p10, v4

    .line 248
    .end local v2    # "lx":F
    .end local v3    # "ly":F
    .end local v4    # "lz":F
    :cond_0
    add-float v11, p2, p6

    add-float v6, v11, p10

    .line 251
    .local v6, "t":F
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1

    .line 252
    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 253
    .local v5, "s":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v7, v11, v5

    .line 254
    .local v7, "w":F
    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v11, v5

    .line 255
    sub-float v11, p9, p7

    mul-float v8, v11, v5

    .line 256
    .local v8, "x":F
    sub-float v11, p4, p8

    mul-float v9, v11, v5

    .line 257
    .local v9, "y":F
    sub-float v11, p5, p3

    mul-float v10, v11, v5

    .line 281
    .local v10, "z":F
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/asha/vrlib/model/MDQuaternion;->set(FFFF)V

    .line 282
    return-void

    .line 258
    .end local v5    # "s":F
    .end local v7    # "w":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "z":F
    :cond_1
    cmpl-float v11, p2, p6

    if-lez v11, :cond_2

    cmpl-float v11, p2, p10

    if-lez v11, :cond_2

    .line 259
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p2

    float-to-double v14, v0

    add-double/2addr v12, v14

    move/from16 v0, p6

    float-to-double v14, v0

    sub-double/2addr v12, v14

    move/from16 v0, p10

    float-to-double v14, v0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 260
    .restart local v5    # "s":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v8, v5, v11

    .line 261
    .restart local v8    # "x":F
    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v11, v5

    .line 262
    add-float v11, p5, p3

    mul-float v9, v11, v5

    .line 263
    .restart local v9    # "y":F
    add-float v11, p4, p8

    mul-float v10, v11, v5

    .line 264
    .restart local v10    # "z":F
    sub-float v11, p9, p7

    mul-float v7, v11, v5

    .line 265
    .restart local v7    # "w":F
    goto :goto_0

    .end local v5    # "s":F
    .end local v7    # "w":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "z":F
    :cond_2
    cmpl-float v11, p6, p10

    if-lez v11, :cond_3

    .line 266
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p6

    float-to-double v14, v0

    add-double/2addr v12, v14

    move/from16 v0, p2

    float-to-double v14, v0

    sub-double/2addr v12, v14

    move/from16 v0, p10

    float-to-double v14, v0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 267
    .restart local v5    # "s":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v9, v5, v11

    .line 268
    .restart local v9    # "y":F
    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v11, v5

    .line 269
    add-float v11, p5, p3

    mul-float v8, v11, v5

    .line 270
    .restart local v8    # "x":F
    add-float v11, p9, p7

    mul-float v10, v11, v5

    .line 271
    .restart local v10    # "z":F
    sub-float v11, p4, p8

    mul-float v7, v11, v5

    .line 272
    .restart local v7    # "w":F
    goto :goto_0

    .line 273
    .end local v5    # "s":F
    .end local v7    # "w":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "z":F
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p10

    float-to-double v14, v0

    add-double/2addr v12, v14

    move/from16 v0, p2

    float-to-double v14, v0

    sub-double/2addr v12, v14

    move/from16 v0, p6

    float-to-double v14, v0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 274
    .restart local v5    # "s":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v5, v11

    .line 275
    .restart local v10    # "z":F
    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v11, v5

    .line 276
    add-float v11, p4, p8

    mul-float v8, v11, v5

    .line 277
    .restart local v8    # "x":F
    add-float v11, p9, p7

    mul-float v9, v11, v5

    .line 278
    .restart local v9    # "y":F
    sub-float v11, p5, p3

    mul-float v7, v11, v5

    .restart local v7    # "w":F
    goto/16 :goto_0
.end method


# virtual methods
.method public clone(Lcom/asha/vrlib/model/MDQuaternion;)V
    .locals 4
    .param p1, "src"    # Lcom/asha/vrlib/model/MDQuaternion;

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-void
.end method

.method public conjugate()Lcom/asha/vrlib/model/MDQuaternion;
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/asha/vrlib/model/MDQuaternion;

    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-float v2, v2

    iget-object v3, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    neg-float v3, v3

    iget-object v4, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/asha/vrlib/model/MDQuaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public divides(Lcom/asha/vrlib/model/MDQuaternion;)Lcom/asha/vrlib/model/MDQuaternion;
    .locals 2
    .param p1, "b"    # Lcom/asha/vrlib/model/MDQuaternion;

    .prologue
    .line 125
    move-object v0, p0

    .line 126
    .local v0, "a":Lcom/asha/vrlib/model/MDQuaternion;
    invoke-virtual {v0}, Lcom/asha/vrlib/model/MDQuaternion;->inverse()Lcom/asha/vrlib/model/MDQuaternion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/asha/vrlib/model/MDQuaternion;->times(Lcom/asha/vrlib/model/MDQuaternion;)Lcom/asha/vrlib/model/MDQuaternion;

    move-result-object v1

    return-object v1
.end method

.method public fromMatrix([F)V
    .locals 11
    .param p1, "matrix"    # [F

    .prologue
    const/4 v1, 0x0

    .line 174
    aget v2, p1, v1

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    const/4 v0, 0x5

    aget v6, p1, v0

    const/4 v0, 0x6

    aget v7, p1, v0

    const/16 v0, 0x8

    aget v8, p1, v0

    const/16 v0, 0x9

    aget v9, p1, v0

    const/16 v0, 0xa

    aget v10, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/asha/vrlib/model/MDQuaternion;->setFromAxes(ZFFFFFFFFF)V

    .line 177
    return-void
.end method

.method public getGimbalPole()I
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 319
    iget-object v7, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v1, v7, v6

    .line 320
    .local v1, "w":F
    iget-object v7, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v7, v5

    .line 321
    .local v2, "x":F
    iget-object v7, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v8, 0x2

    aget v3, v7, v8

    .line 322
    .local v3, "y":F
    iget-object v7, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v8, 0x3

    aget v4, v7, v8

    .line 324
    .local v4, "z":F
    mul-float v7, v3, v2

    mul-float v8, v4, v1

    add-float v0, v7, v8

    .line 325
    .local v0, "t":F
    const v7, 0x3eff7cee    # 0.499f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    const v5, -0x41008312    # -0.499f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->getPitchRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPitchRad()F
    .locals 8

    .prologue
    .line 350
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 351
    .local v1, "w":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x1

    aget v2, v5, v6

    .line 352
    .local v2, "x":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x2

    aget v3, v5, v6

    .line 353
    .local v3, "y":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x3

    aget v4, v5, v6

    .line 355
    .local v4, "z":F
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->getGimbalPole()I

    move-result v0

    .line 356
    .local v0, "pole":I
    if-nez v0, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v1, v2

    mul-float v7, v4, v3

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    :goto_0
    return v5

    :cond_0
    int-to-float v5, v0

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    goto :goto_0
.end method

.method public getRoll()F
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->getRollRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRollRad()F
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 331
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 332
    .local v1, "w":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x1

    aget v2, v5, v6

    .line 333
    .local v2, "x":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x2

    aget v3, v5, v6

    .line 334
    .local v3, "y":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x3

    aget v4, v5, v6

    .line 336
    .local v4, "z":F
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->getGimbalPole()I

    move-result v0

    .line 337
    .local v0, "pole":I
    if-nez v0, :cond_0

    mul-float v5, v1, v4

    mul-float v6, v3, v2

    add-float/2addr v5, v6

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, v2, v2

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v5

    :goto_0
    return v5

    :cond_0
    int-to-float v5, v0

    mul-float/2addr v5, v9

    .line 338
    invoke-static {v3, v1}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v6

    mul-float/2addr v5, v6

    goto :goto_0
.end method

.method public getYaw()F
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->getYawRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getYawRad()F
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 368
    iget-object v4, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 369
    .local v0, "w":F
    iget-object v4, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v5, 0x1

    aget v1, v4, v5

    .line 370
    .local v1, "x":F
    iget-object v4, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 371
    .local v2, "y":F
    iget-object v4, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v5, 0x3

    aget v3, v4, v5

    .line 373
    .local v3, "z":F
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->getGimbalPole()I

    move-result v4

    if-nez v4, :cond_0

    mul-float v4, v2, v0

    mul-float v5, v1, v3

    add-float/2addr v4, v5

    mul-float/2addr v4, v8

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v2, v2

    mul-float v7, v1, v1

    add-float/2addr v6, v7

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v4

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public idt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/asha/vrlib/model/MDQuaternion;->set(FFFF)V

    .line 60
    return-void
.end method

.method public inverse()Lcom/asha/vrlib/model/MDQuaternion;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 121
    .local v0, "d":F
    new-instance v1, Lcom/asha/vrlib/model/MDQuaternion;

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v4

    div-float/2addr v2, v0

    iget-object v3, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v3, v3, v5

    neg-float v3, v3

    div-float/2addr v3, v0

    iget-object v4, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v4, v4, v6

    neg-float v4, v4

    div-float/2addr v4, v0

    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v7

    neg-float v5, v5

    div-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/asha/vrlib/model/MDQuaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public nor()V
    .locals 8

    .prologue
    .line 383
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 384
    .local v1, "w":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x1

    aget v2, v5, v6

    .line 385
    .local v2, "x":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x2

    aget v3, v5, v6

    .line 386
    .local v3, "y":F
    iget-object v5, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v6, 0x3

    aget v4, v5, v6

    .line 388
    .local v4, "z":F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    mul-float v6, v1, v1

    add-float v0, v5, v6

    .line 389
    .local v0, "len":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 390
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 391
    div-float/2addr v1, v0

    .line 392
    div-float/2addr v2, v0

    .line 393
    div-float/2addr v3, v0

    .line 394
    div-float/2addr v4, v0

    .line 396
    :cond_0
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/asha/vrlib/model/MDQuaternion;->set(FFFF)V

    .line 397
    return-void
.end method

.method public plus(Lcom/asha/vrlib/model/MDQuaternion;)Lcom/asha/vrlib/model/MDQuaternion;
    .locals 8
    .param p1, "b"    # Lcom/asha/vrlib/model/MDQuaternion;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    move-object v0, p0

    .line 107
    .local v0, "a":Lcom/asha/vrlib/model/MDQuaternion;
    new-instance v1, Lcom/asha/vrlib/model/MDQuaternion;

    iget-object v2, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v4

    iget-object v3, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v3, v3, v5

    iget-object v4, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v4, v4, v6

    iget-object v5, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v6

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v7

    iget-object v6, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v7

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/asha/vrlib/model/MDQuaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public rotateVec([F)[F
    .locals 13
    .param p1, "v"    # [F

    .prologue
    .line 131
    const/4 v7, 0x0

    aget v4, p1, v7

    .line 132
    .local v4, "v0":F
    const/4 v7, 0x1

    aget v5, p1, v7

    .line 133
    .local v5, "v1":F
    const/4 v7, 0x2

    aget v6, p1, v7

    .line 135
    .local v6, "v2":F
    iget-object v7, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    mul-float/2addr v8, v6

    add-float v3, v7, v8

    .line 137
    .local v3, "s":F
    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v9, v4

    iget-object v10, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float/2addr v10, v6

    iget-object v11, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v0, v7, v4

    .line 138
    .local v0, "n0":F
    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v9, v5

    iget-object v10, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v10, v4

    iget-object v11, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v1, v7, v5

    .line 139
    .local v1, "n1":F
    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v9, v6

    iget-object v10, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v10, v5

    iget-object v11, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v11, v4

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v2, v7, v6

    .line 141
    .local v2, "n2":F
    const/4 v7, 0x3

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    aput v1, v7, v8

    const/4 v8, 0x2

    aput v2, v7, v8

    return-object v7
.end method

.method public setEulerAngles(FFF)V
    .locals 3
    .param p1, "pitch"    # F
    .param p2, "yaw"    # F
    .param p3, "roll"    # F

    .prologue
    const v2, 0x3c8efa35

    .line 285
    mul-float v0, p1, v2

    mul-float v1, p2, v2

    mul-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/asha/vrlib/model/MDQuaternion;->setEulerAnglesRad(FFF)V

    .line 286
    return-void
.end method

.method public setEulerAnglesRad(FFF)V
    .locals 19
    .param p1, "pitch"    # F
    .param p2, "yaw"    # F
    .param p3, "roll"    # F

    .prologue
    .line 294
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v8, p3, v15

    .line 295
    .local v8, "hr":F
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    .line 296
    .local v11, "shr":F
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 297
    .local v3, "chr":F
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v7, p1, v15

    .line 298
    .local v7, "hp":F
    float-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v10, v0

    .line 299
    .local v10, "shp":F
    float-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 300
    .local v2, "chp":F
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v9, p2, v15

    .line 301
    .local v9, "hy":F
    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 302
    .local v12, "shy":F
    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 303
    .local v4, "chy":F
    mul-float v6, v4, v10

    .line 304
    .local v6, "chy_shp":F
    mul-float v13, v12, v2

    .line 305
    .local v13, "shy_chp":F
    mul-float v5, v4, v2

    .line 306
    .local v5, "chy_chp":F
    mul-float v14, v12, v10

    .line 308
    .local v14, "shy_shp":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/16 v16, 0x1

    mul-float v17, v6, v3

    mul-float v18, v13, v11

    add-float v17, v17, v18

    aput v17, v15, v16

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/16 v16, 0x2

    mul-float v17, v13, v3

    mul-float v18, v6, v11

    sub-float v17, v17, v18

    aput v17, v15, v16

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/16 v16, 0x3

    mul-float v17, v5, v11

    mul-float v18, v14, v3

    sub-float v17, v17, v18

    aput v17, v15, v16

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/16 v16, 0x0

    mul-float v17, v5, v3

    mul-float v18, v14, v11

    add-float v17, v17, v18

    aput v17, v15, v16

    .line 314
    return-void
.end method

.method public setFromAxis(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 186
    const v0, 0x3c8efa35

    mul-float/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/asha/vrlib/model/MDQuaternion;->setFromAxisRad(FFFF)V

    .line 187
    return-void
.end method

.method public setFromAxisRad(FFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radians"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const v5, 0x40c90fdb

    .line 196
    invoke-static {p1, p2, p3}, Lcom/asha/vrlib/model/MDVector3D;->len(FFF)F

    move-result v0

    .line 197
    .local v0, "d":F
    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->idt()V

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    .line 203
    cmpg-float v4, p4, v6

    if-gez v4, :cond_1

    neg-float v4, p4

    rem-float/2addr v4, v5

    sub-float v1, v5, v4

    .line 204
    .local v1, "l_ang":F
    :goto_1
    div-float v4, v1, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 205
    .local v3, "l_sin":F
    div-float v4, v1, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 206
    .local v2, "l_cos":F
    mul-float v4, v0, p1

    mul-float/2addr v4, v3

    mul-float v5, v0, p2

    mul-float/2addr v5, v3

    mul-float v6, v0, p3

    mul-float/2addr v6, v3

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/asha/vrlib/model/MDQuaternion;->set(FFFF)V

    .line 207
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDQuaternion;->nor()V

    goto :goto_0

    .line 203
    .end local v1    # "l_ang":F
    .end local v2    # "l_cos":F
    .end local v3    # "l_sin":F
    :cond_1
    rem-float v1, p4, v5

    goto :goto_1
.end method

.method public times(Lcom/asha/vrlib/model/MDQuaternion;)Lcom/asha/vrlib/model/MDQuaternion;
    .locals 12
    .param p1, "b"    # Lcom/asha/vrlib/model/MDQuaternion;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    move-object v0, p0

    .line 112
    .local v0, "a":Lcom/asha/vrlib/model/MDQuaternion;
    iget-object v5, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v8

    iget-object v6, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v8

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v9

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v10

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v10

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v11

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    sub-float v1, v5, v6

    .line 113
    .local v1, "y0":F
    iget-object v5, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v8

    iget-object v6, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v9

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v10

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v11

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v10

    mul-float/2addr v6, v7

    sub-float v2, v5, v6

    .line 114
    .local v2, "y1":F
    iget-object v5, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v8

    iget-object v6, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v9

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v10

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v11

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 115
    .local v3, "y2":F
    iget-object v5, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v5, v5, v8

    iget-object v6, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v9

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v10

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v6, v6, v11

    iget-object v7, p1, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 116
    .local v4, "y3":F
    new-instance v5, Lcom/asha/vrlib/model/MDQuaternion;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/asha/vrlib/model/MDQuaternion;-><init>(FFFF)V

    return-object v5
.end method

.method public toMatrix([F)V
    .locals 17
    .param p1, "m"    # [F

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float v2, v10, v11

    .line 147
    .local v2, "xx":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float v3, v10, v11

    .line 148
    .local v3, "xy":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    mul-float v4, v10, v11

    .line 149
    .local v4, "xz":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float v1, v10, v11

    .line 151
    .local v1, "xw":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float v6, v10, v11

    .line 152
    .local v6, "yy":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    mul-float v7, v10, v11

    .line 153
    .local v7, "yz":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float v5, v10, v11

    .line 155
    .local v5, "yw":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    mul-float v9, v10, v11

    .line 156
    .local v9, "zz":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float v8, v10, v11

    .line 157
    .local v8, "zw":F
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v6, v9

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, p1, v10

    .line 158
    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v3, v8

    mul-float/2addr v11, v12

    aput v11, p1, v10

    .line 159
    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v4, v5

    mul-float/2addr v11, v12

    aput v11, p1, v10

    .line 161
    const/4 v10, 0x4

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v3, v8

    mul-float/2addr v11, v12

    aput v11, p1, v10

    .line 162
    const/4 v10, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v2, v9

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, p1, v10

    .line 163
    const/4 v10, 0x6

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v7, v1

    mul-float/2addr v11, v12

    aput v11, p1, v10

    .line 165
    const/16 v10, 0x8

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v4, v5

    mul-float/2addr v11, v12

    aput v11, p1, v10

    .line 166
    const/16 v10, 0x9

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v7, v1

    mul-float/2addr v11, v12

    aput v11, p1, v10

    .line 167
    const/16 v10, 0xa

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v2, v6

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, p1, v10

    .line 169
    const/4 v10, 0x3

    const/4 v11, 0x7

    const/16 v12, 0xb

    const/16 v13, 0xc

    const/16 v14, 0xd

    const/16 v15, 0xe

    const/16 v16, 0x0

    aput v16, p1, v15

    aput v16, p1, v14

    aput v16, p1, v13

    aput v16, p1, v12

    aput v16, p1, v11

    aput v16, p1, v10

    .line 170
    const/16 v10, 0xf

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, p1, v10

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    const-string v0, "MDQuaternion w=%f x=%f, y=%f, z=%f"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/asha/vrlib/model/MDQuaternion;->q:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
