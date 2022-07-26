.class public Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
.super Ljava/lang/Object;
.source "Matrix3x3d.java"


# instance fields
.field public m:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    .line 9
    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D
    .param p13, "m20"    # D
    .param p15, "m21"    # D
    .param p17, "m22"    # D

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 14
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 15
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 16
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 17
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 18
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 19
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 20
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 21
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 9
    .param p1, "o"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v4

    aput-wide v2, v0, v4

    .line 27
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v5

    aput-wide v2, v0, v5

    .line 28
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    aput-wide v2, v0, v6

    .line 29
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    aput-wide v2, v0, v7

    .line 30
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    aput-wide v2, v0, v8

    .line 31
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 33
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 35
    return-void
.end method

.method public static add(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 11
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v6

    .line 158
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v7

    add-double/2addr v2, v4

    aput-wide v2, v0, v7

    .line 159
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v8

    add-double/2addr v2, v4

    aput-wide v2, v0, v8

    .line 160
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v9

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v9

    add-double/2addr v2, v4

    aput-wide v2, v0, v9

    .line 161
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v10

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v10

    add-double/2addr v2, v4

    aput-wide v2, v0, v10

    .line 162
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 163
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 164
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 165
    iget-object v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 166
    return-void
.end method

.method public static mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 24
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x3

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x6

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x4

    aget-wide v12, v12, v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x4

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x5

    aget-wide v12, v12, v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x7

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x2

    aget-wide v14, v14, v15

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x4

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    mul-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    aget-wide v16, v16, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-wide v16, v16, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-double v16, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget-wide v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    add-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x8

    aget-wide v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    add-double v18, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-wide v20, v20, v21

    mul-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-wide v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    add-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-wide v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    add-double v20, v20, v2

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v21}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(DDDDDDDDD)V

    .line 178
    return-void
.end method

.method public static mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 12
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p1, "v"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 181
    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v0, v6, v8

    .line 182
    .local v0, "x":D
    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 183
    .local v2, "y":D
    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v9, 0x8

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 184
    .local v4, "z":D
    iput-wide v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 185
    iput-wide v2, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    .line 186
    iput-wide v4, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    .line 187
    return-void
.end method


# virtual methods
.method public determinant()D
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 190
    invoke-virtual {p0, v12, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v0

    invoke-virtual {p0, v10, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v11, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v11, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v10, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 191
    invoke-virtual {p0, v12, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v10, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v11, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v10, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {p0, v11, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 192
    invoke-virtual {p0, v12, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v10, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v11, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v10, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {p0, v11, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 190
    return-wide v0
.end method

.method public get(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "v"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v0, p1

    iput-wide v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 101
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    .line 102
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    .line 103
    return-void
.end method

.method public invert(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)Z
    .locals 28
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->determinant()D

    move-result-wide v22

    .line 197
    .local v22, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v22, v2

    if-nez v2, :cond_0

    .line 198
    const/4 v2, 0x0

    .line 210
    :goto_0
    return v2

    .line 200
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v24, v2, v22

    .line 201
    .local v24, "invdet":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double v4, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    aget-wide v6, v6, v7

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    neg-double v2, v2

    mul-double v6, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    mul-double v8, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x6

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    neg-double v2, v2

    mul-double v10, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v13, 0x8

    aget-wide v12, v12, v13

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x6

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v2, v12

    mul-double v12, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x3

    aget-wide v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    sub-double/2addr v2, v14

    neg-double v2, v2

    mul-double v14, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    aget-wide v16, v16, v17

    mul-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x6

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x4

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    sub-double v2, v2, v16

    mul-double v16, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget-wide v18, v18, v19

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget-wide v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v2, v2, v18

    neg-double v2, v2

    mul-double v18, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-wide v20, v20, v21

    mul-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-wide v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    mul-double v20, v20, v26

    sub-double v2, v2, v20

    mul-double v20, v2, v24

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v21}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(DDDDDDDDD)V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public minusEquals(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 6
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public plusEquals(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 6
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public scale(D)V
    .locals 5
    .param p1, "s"    # D

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public set(DDDDDDDDD)V
    .locals 3
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D
    .param p13, "m20"    # D
    .param p15, "m21"    # D
    .param p17, "m22"    # D

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 39
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 40
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 41
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 42
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 43
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 44
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 45
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 46
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 47
    return-void
.end method

.method public set(IID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # D

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 97
    return-void
.end method

.method public set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 9
    .param p1, "o"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v4

    aput-wide v2, v0, v4

    .line 51
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v5

    aput-wide v2, v0, v5

    .line 52
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    aput-wide v2, v0, v6

    .line 53
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    aput-wide v2, v0, v7

    .line 54
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    aput-wide v2, v0, v8

    .line 55
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 59
    return-void
.end method

.method public setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 4
    .param p1, "col"    # I
    .param p2, "v"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-wide v2, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    aput-wide v2, v0, p1

    .line 107
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    iget-wide v2, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    aput-wide v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    iget-wide v2, p2, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    aput-wide v2, v0, v1

    .line 109
    return-void
.end method

.method public setIdentity()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    .line 75
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide v4, v0, v1

    .line 79
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide v4, v0, v1

    .line 83
    return-void
.end method

.method public setSameDiagonal(D)V
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 87
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p1, v0, v1

    .line 88
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p1, v0, v1

    .line 89
    return-void
.end method

.method public setZero()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide v2, v0, v1

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 221
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public transpose()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 130
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v2, v6

    .line 131
    .local v0, "tmp":D
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v3, v8

    aput-wide v4, v2, v6

    .line 132
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aput-wide v0, v2, v8

    .line 133
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v2, v7

    .line 134
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v3, v10

    aput-wide v4, v2, v7

    .line 135
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aput-wide v0, v2, v10

    .line 136
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v2, v9

    .line 137
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v4, 0x7

    aget-wide v4, v3, v4

    aput-wide v4, v2, v9

    .line 138
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aput-wide v0, v2, v3

    .line 139
    return-void
.end method

.method public transpose(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 10
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 142
    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v0, v6, v7

    .line 143
    .local v0, "m1":D
    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v2, v6, v7

    .line 144
    .local v2, "m2":D
    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    aget-wide v4, v6, v7

    .line 145
    .local v4, "m3":D
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 146
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 147
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 148
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aput-wide v0, v6, v7

    .line 149
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 150
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 151
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aput-wide v2, v6, v7

    .line 152
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x7

    aput-wide v4, v6, v7

    .line 153
    iget-object v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->m:[D

    const/16 v9, 0x8

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 154
    return-void
.end method
