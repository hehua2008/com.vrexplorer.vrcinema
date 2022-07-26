.class public Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;
.super Ljava/lang/Object;
.source "So3Util.java"


# static fields
.field private static final M_SQRT1_2:D = 0.7071067811865476

.field private static final ONE_20TH:D = 0.1666666716337204

.field private static final ONE_6TH:D = 0.1666666716337204

.field private static muFromSO3R2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private static rotationPiAboutAxisTemp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private static sO3FromTwoVec33R1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private static sO3FromTwoVec33R2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private static sO3FromTwoVecA:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private static sO3FromTwoVecB:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private static sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private static sO3FromTwoVecRotationAxis:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private static temp31:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->temp31:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 148
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 149
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecA:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 150
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecB:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 151
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecRotationAxis:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 152
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec33R1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 153
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec33R2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 154
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->muFromSO3R2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 155
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rotationPiAboutAxisTemp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatorField(ILcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 5
    .param p0, "i"    # I
    .param p1, "pos"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v4, 0x0

    .line 138
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p0, v4, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 139
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p0, 0x2

    rem-int/lit8 v1, v1, 0x3

    .line 141
    invoke-virtual {p1, v1, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    neg-double v2, v2

    .line 139
    invoke-virtual {p2, v0, v4, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 142
    add-int/lit8 v0, p0, 0x2

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p0, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 143
    invoke-virtual {p1, v1, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    .line 142
    invoke-virtual {p2, v0, v4, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 144
    return-void
.end method

.method public static muFromSO3(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 26
    .param p0, "so3"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 80
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const/4 v2, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v22, v6, v8

    .line 81
    .local v22, "cosAngle":D
    const/4 v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x1

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v4, v6, v8

    const/4 v2, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v2, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    const/4 v2, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v12

    sub-double/2addr v8, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v12

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v24

    .line 83
    .local v24, "sinAngleAbs":D
    const-wide v6, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    cmpl-double v2, v22, v6

    if-lez v2, :cond_1

    .line 84
    const-wide/16 v6, 0x0

    cmpl-double v2, v24, v6

    if-lez v2, :cond_0

    .line 85
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    div-double v6, v6, v24

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-wide v6, -0x40195f619980c433L    # -0.7071067811865476

    cmpl-double v2, v22, v6

    if-lez v2, :cond_2

    .line 89
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    .line 90
    .local v20, "angle":D
    div-double v6, v20, v24

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    goto :goto_0

    .line 93
    .end local v20    # "angle":D
    :cond_2
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    sub-double v20, v6, v8

    .line 94
    .restart local v20    # "angle":D
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    sub-double v4, v6, v22

    .line 95
    .local v4, "d0":D
    const/4 v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    sub-double v10, v6, v22

    .line 96
    .local v10, "d":D
    const/4 v2, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    sub-double v18, v6, v22

    .line 97
    .local v18, "d2":D
    sget-object v3, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->muFromSO3R2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 98
    .local v3, "r2":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    mul-double v6, v4, v4

    mul-double v8, v10, v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_4

    mul-double v6, v4, v4

    mul-double v8, v18, v18

    cmpl-double v2, v6, v8

    if-lez v2, :cond_4

    .line 99
    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v2, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    const/4 v2, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v12

    add-double/2addr v8, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v12

    invoke-virtual/range {v3 .. v9}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 107
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->dot(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v2, v6, v8

    if-gez v2, :cond_3

    .line 108
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 110
    :cond_3
    invoke-virtual {v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 111
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 112
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    goto/16 :goto_0

    .line 101
    :cond_4
    mul-double v6, v10, v10

    mul-double v8, v18, v18

    cmpl-double v2, v6, v8

    if-lez v2, :cond_5

    .line 102
    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v6, v8

    const/4 v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v12

    add-double/2addr v6, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v6, v12

    move-object v7, v3

    invoke-virtual/range {v7 .. v13}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    goto :goto_1

    .line 105
    :cond_5
    const/4 v2, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v14, v6, v8

    const/4 v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v2, 0x1

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v16, v6, v8

    move-object v13, v3

    invoke-virtual/range {v13 .. v19}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    goto/16 :goto_1
.end method

.method private static rodriguesSo3Exp(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;DDLcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 19
    .param p0, "w"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "kA"    # D
    .param p3, "kB"    # D
    .param p5, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double v6, v12, v14

    .line 118
    .local v6, "wx2":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double v8, v12, v14

    .line 119
    .local v8, "wy2":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double v10, v12, v14

    .line 120
    .local v10, "wz2":D
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v8, v10

    mul-double v16, v16, p3

    sub-double v14, v14, v16

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 121
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v6, v10

    mul-double v16, v16, p3

    sub-double v14, v14, v16

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 122
    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v6, v8

    mul-double v16, v16, p3

    sub-double v14, v14, v16

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 123
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double v2, p1, v12

    .line 124
    .local v2, "a":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v12, v14

    mul-double v4, p3, v12

    .line 125
    .local v4, "b":D
    const/4 v12, 0x0

    const/4 v13, 0x1

    sub-double v14, v4, v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 126
    const/4 v12, 0x1

    const/4 v13, 0x0

    add-double v14, v4, v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 127
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double v2, p1, v12

    .line 128
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v12, v14

    mul-double v4, p3, v12

    .line 129
    const/4 v12, 0x0

    const/4 v13, 0x2

    add-double v14, v4, v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 130
    const/4 v12, 0x2

    const/4 v13, 0x0

    sub-double v14, v4, v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 131
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double v2, p1, v12

    .line 132
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v12, v14

    mul-double v4, p3, v12

    .line 133
    const/4 v12, 0x1

    const/4 v13, 0x2

    sub-double v14, v4, v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 134
    const/4 v12, 0x2

    const/4 v13, 0x1

    add-double v14, v4, v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(IID)V

    .line 135
    return-void
.end method

.method private static rotationPiAboutAxis(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 14
    .param p0, "v"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 50
    sget-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rotationPiAboutAxisTemp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 51
    sget-object v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rotationPiAboutAxisTemp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sget-object v1, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rotationPiAboutAxisTemp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 52
    const-wide v8, 0x3fd45f306dc9c883L    # 0.3183098861837907

    .line 53
    .local v8, "invTheta":D
    const-wide/16 v10, 0x0

    .line 54
    .local v10, "kA":D
    const-wide v12, 0x3fc9f02f6222c721L    # 0.20264236728467558

    .line 55
    .local v12, "kB":D
    sget-object v1, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rotationPiAboutAxisTemp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fc9f02f6222c721L    # 0.20264236728467558

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rodriguesSo3Exp(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;DDLcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 56
    return-void
.end method

.method public static sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 20
    .param p0, "w"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->dot(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)D

    move-result-wide v14

    .line 60
    .local v14, "thetaSq":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 63
    .local v12, "theta":D
    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v14, v2

    if-gez v2, :cond_0

    .line 64
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double/2addr v8, v14

    sub-double v4, v2, v8

    .line 65
    .local v4, "kA":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .local v6, "kB":D
    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v8, p1

    .line 76
    invoke-static/range {v3 .. v8}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rodriguesSo3Exp(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;DDLcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 77
    return-void

    .line 67
    .end local v4    # "kA":D
    .end local v6    # "kB":D
    :cond_0
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v14, v2

    if-gez v2, :cond_1

    .line 68
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x3fa5555560000000L    # 0.0416666679084301

    mul-double/2addr v8, v14

    sub-double v6, v2, v8

    .line 69
    .restart local v6    # "kB":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double/2addr v8, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double v18, v18, v14

    sub-double v16, v16, v18

    mul-double v8, v8, v16

    sub-double v4, v2, v8

    .restart local v4    # "kA":D
    goto :goto_0

    .line 72
    .end local v4    # "kA":D
    .end local v6    # "kB":D
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v10, v2, v12

    .line 73
    .local v10, "invTheta":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v2, v10

    .line 74
    .restart local v4    # "kA":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    sub-double/2addr v2, v8

    mul-double v8, v10, v10

    mul-double v6, v2, v8

    .restart local v6    # "kB":D
    goto :goto_0
.end method

.method public static sO3FromTwoVec(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 11
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 18
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {p0, p1, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 19
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 20
    invoke-static {p0, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->dot(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)D

    move-result-wide v0

    .line 21
    .local v0, "dot":D
    cmpl-double v4, v0, v6

    if-ltz v4, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 47
    .end local v0    # "dot":D
    :goto_0
    return-void

    .line 25
    .restart local v0    # "dot":D
    :cond_0
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecRotationAxis:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {p0, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->ortho(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 26
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecRotationAxis:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v4, p2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->rotationPiAboutAxis(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    goto :goto_0

    .line 30
    .end local v0    # "dot":D
    :cond_1
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecA:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4, p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 31
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecB:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 32
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 33
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecA:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 34
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecB:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 35
    sget-object v2, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec33R1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 36
    .local v2, "r1":Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecA:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v2, v8, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 37
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v2, v9, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 38
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    sget-object v5, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecA:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    sget-object v6, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->temp31:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v4, v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 39
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->temp31:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v2, v10, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 40
    sget-object v3, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec33R2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 41
    .local v3, "r2":Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecB:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v3, v8, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 42
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v3, v9, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 43
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecN:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    sget-object v5, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVecB:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    sget-object v6, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->temp31:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v4, v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 44
    sget-object v4, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->temp31:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v3, v10, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 45
    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->transpose()V

    .line 46
    invoke-static {v3, v2, p2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    goto :goto_0
.end method
