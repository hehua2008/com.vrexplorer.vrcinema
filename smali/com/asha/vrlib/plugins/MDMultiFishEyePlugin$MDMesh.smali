.class Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDMultiFishEyePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MDMesh"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MDMesh"


# instance fields
.field private final direction:Lcom/asha/vrlib/common/MDDirection;

.field private final radius:F

.field final synthetic this$0:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;FLcom/asha/vrlib/common/MDDirection;)V
    .locals 0
    .param p2, "radius"    # F
    .param p3, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->this$0:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;

    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    .line 153
    iput p2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->radius:F

    .line 154
    iput-object p3, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->direction:Lcom/asha/vrlib/common/MDDirection;

    .line 155
    return-void
.end method

.method private generateMesh(Lcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 54
    .param p1, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 163
    const v5, 0x40490fdb    # (float)Math.PI

    .line 164
    .local v5, "PI":F
    const/16 v32, 0x10

    .line 165
    .local v32, "rows":I
    const/16 v11, 0x10

    .line 166
    .local v11, "columns":I
    const/16 v48, 0x11

    mul-int/lit8 v26, v48, 0x11

    .line 168
    .local v26, "numPoint":I
    const/high16 v47, -0x3f000000    # -8.0f

    .line 169
    .local v47, "z":F
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v49, v0

    div-float v6, v48, v49

    .line 170
    .local v6, "R":F
    const/high16 v48, 0x3f800000    # 1.0f

    int-to-float v0, v11

    move/from16 v49, v0

    div-float v7, v48, v49

    .line 172
    .local v7, "S":F
    const/16 v48, 0x363

    move/from16 v0, v48

    new-array v0, v0, [F

    move-object/from16 v45, v0

    .line 173
    .local v45, "vertexs":[F
    const/16 v48, 0x242

    move/from16 v0, v48

    new-array v0, v0, [F

    move-object/from16 v39, v0

    .line 174
    .local v39, "texcoords":[F
    const/16 v48, 0x242

    move/from16 v0, v48

    new-array v0, v0, [F

    move-object/from16 v40, v0

    .line 175
    .local v40, "texcoords2":[F
    const/16 v48, 0x6c6

    move/from16 v0, v48

    new-array v0, v0, [S

    move-object/from16 v19, v0

    .line 177
    .local v19, "indices":[S
    const/16 v36, 0x0

    .line 178
    .local v36, "t":I
    const/16 v42, 0x0

    .line 179
    .local v42, "v":I
    const/16 v31, 0x0

    .local v31, "r":S
    :goto_0
    const/16 v48, 0x11

    move/from16 v0, v31

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    .line 180
    const/16 v34, 0x0

    .local v34, "s":S
    move/from16 v43, v42

    .end local v42    # "v":I
    .local v43, "v":I
    :goto_1
    const/16 v48, 0x11

    move/from16 v0, v34

    move/from16 v1, v48

    if-ge v0, v1, :cond_1

    .line 182
    add-int/lit8 v42, v43, 0x1

    .end local v43    # "v":I
    .restart local v42    # "v":I
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v48, v0

    mul-float v48, v48, v7

    const/high16 v49, 0x40000000    # 2.0f

    mul-float v48, v48, v49

    const/high16 v49, 0x3f800000    # 1.0f

    sub-float v48, v48, v49

    aput v48, v45, v43

    .line 183
    add-int/lit8 v43, v42, 0x1

    .end local v42    # "v":I
    .restart local v43    # "v":I
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v48, v0

    mul-float v48, v48, v6

    const/high16 v49, 0x40000000    # 2.0f

    mul-float v48, v48, v49

    const/high16 v49, 0x3f800000    # 1.0f

    sub-float v48, v48, v49

    aput v48, v45, v42

    .line 184
    add-int/lit8 v42, v43, 0x1

    .end local v43    # "v":I
    .restart local v42    # "v":I
    aput v47, v45, v43

    .line 186
    const v4, 0x40490fdb    # (float)Math.PI

    .line 187
    .local v4, "FOV":F
    const/high16 v46, 0x3f800000    # 1.0f

    .line 188
    .local v46, "width":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 190
    .local v17, "height":F
    const v48, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v7

    const/high16 v50, 0x3f000000    # 0.5f

    sub-float v49, v49, v50

    mul-float v41, v48, v49

    .line 191
    .local v41, "theta":F
    const v48, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v6

    const/high16 v50, 0x3f000000    # 0.5f

    sub-float v49, v49, v50

    mul-float v27, v48, v49

    .line 193
    .local v27, "phi":F
    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->cos(D)D

    move-result-wide v48

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v28, v0

    .line 194
    .local v28, "psphx":F
    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->cos(D)D

    move-result-wide v48

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->cos(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v29, v0

    .line 195
    .local v29, "psphy":F
    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v30, v0

    .line 197
    .local v30, "psphz":F
    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v48 .. v51}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v41, v0

    .line 198
    mul-float v48, v28, v28

    mul-float v49, v30, v30

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v48

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v48 .. v51}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v27, v0

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->radius:F

    move/from16 v48, v0

    mul-float v48, v48, v27

    div-float v33, v48, v4

    .line 201
    .local v33, "rr":F
    const/high16 v48, 0x3f000000    # 0.5f

    mul-float v48, v48, v46

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->cos(D)D

    move-result-wide v52

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v8, v0

    .line 202
    .local v8, "a":F
    const/high16 v48, 0x3f000000    # 0.5f

    mul-float v48, v48, v17

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v9, v0

    .line 204
    .local v9, "b":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->direction:Lcom/asha/vrlib/common/MDDirection;

    move-object/from16 v48, v0

    sget-object v49, Lcom/asha/vrlib/common/MDDirection;->HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_0

    .line 205
    mul-int/lit8 v48, v36, 0x2

    const/high16 v49, 0x3f000000    # 0.5f

    mul-float v49, v49, v8

    aput v49, v39, v48

    .line 206
    mul-int/lit8 v48, v36, 0x2

    add-int/lit8 v48, v48, 0x1

    aput v9, v39, v48

    .line 207
    mul-int/lit8 v48, v36, 0x2

    const/high16 v49, 0x3f000000    # 0.5f

    mul-float v49, v49, v8

    const/high16 v50, 0x3f000000    # 0.5f

    add-float v49, v49, v50

    aput v49, v40, v48

    .line 208
    mul-int/lit8 v48, v36, 0x2

    add-int/lit8 v48, v48, 0x1

    aput v9, v40, v48

    .line 217
    :goto_2
    add-int/lit8 v36, v36, 0x1

    .line 180
    add-int/lit8 v48, v34, 0x1

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v34, v0

    move/from16 v43, v42

    .end local v42    # "v":I
    .restart local v43    # "v":I
    goto/16 :goto_1

    .line 210
    .end local v43    # "v":I
    .restart local v42    # "v":I
    :cond_0
    mul-int/lit8 v48, v36, 0x2

    aput v8, v39, v48

    .line 211
    mul-int/lit8 v48, v36, 0x2

    add-int/lit8 v48, v48, 0x1

    const/high16 v49, 0x3f000000    # 0.5f

    mul-float v49, v49, v9

    aput v49, v39, v48

    .line 212
    mul-int/lit8 v48, v36, 0x2

    aput v8, v40, v48

    .line 213
    mul-int/lit8 v48, v36, 0x2

    add-int/lit8 v48, v48, 0x1

    const/high16 v49, 0x3f000000    # 0.5f

    mul-float v49, v49, v9

    const/high16 v50, 0x3f000000    # 0.5f

    add-float v49, v49, v50

    aput v49, v40, v48

    goto :goto_2

    .line 179
    .end local v4    # "FOV":F
    .end local v8    # "a":F
    .end local v9    # "b":F
    .end local v17    # "height":F
    .end local v27    # "phi":F
    .end local v28    # "psphx":F
    .end local v29    # "psphy":F
    .end local v30    # "psphz":F
    .end local v33    # "rr":F
    .end local v41    # "theta":F
    .end local v42    # "v":I
    .end local v46    # "width":F
    .restart local v43    # "v":I
    :cond_1
    add-int/lit8 v48, v31, 0x1

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v31, v0

    move/from16 v42, v43

    .end local v43    # "v":I
    .restart local v42    # "v":I
    goto/16 :goto_0

    .line 224
    .end local v34    # "s":S
    :cond_2
    const/4 v12, 0x0

    .line 225
    .local v12, "counter":I
    add-int/lit8 v35, v11, 0x1

    .line 226
    .local v35, "sectorsPlusOne":I
    const/16 v31, 0x0

    :goto_3
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 227
    const/16 v34, 0x0

    .restart local v34    # "s":S
    move v13, v12

    .end local v12    # "counter":I
    .local v13, "counter":I
    :goto_4
    move/from16 v0, v34

    if-ge v0, v11, :cond_3

    .line 228
    mul-int/lit8 v48, v31, 0x11

    add-int/lit8 v49, v34, 0x1

    add-int v48, v48, v49

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v20, v0

    .line 229
    .local v20, "k0":S
    add-int/lit8 v48, v31, 0x1

    mul-int/lit8 v48, v48, 0x11

    add-int v48, v48, v34

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v21, v0

    .line 230
    .local v21, "k1":S
    mul-int/lit8 v48, v31, 0x11

    add-int v48, v48, v34

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v22, v0

    .line 231
    .local v22, "k2":S
    mul-int/lit8 v48, v31, 0x11

    add-int/lit8 v49, v34, 0x1

    add-int v48, v48, v49

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v23, v0

    .line 232
    .local v23, "k3":S
    add-int/lit8 v48, v31, 0x1

    mul-int/lit8 v48, v48, 0x11

    add-int/lit8 v49, v34, 0x1

    add-int v48, v48, v49

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v24, v0

    .line 233
    .local v24, "k4":S
    add-int/lit8 v48, v31, 0x1

    mul-int/lit8 v48, v48, 0x11

    add-int v48, v48, v34

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v25, v0

    .line 235
    .local v25, "k5":S
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    aput-short v20, v19, v13

    .line 236
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    aput-short v21, v19, v12

    .line 237
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    aput-short v22, v19, v13

    .line 238
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    aput-short v23, v19, v12

    .line 239
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    aput-short v24, v19, v13

    .line 240
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "counter":I
    .restart local v13    # "counter":I
    aput-short v25, v19, v12

    .line 227
    add-int/lit8 v48, v34, 0x1

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v34, v0

    goto :goto_4

    .line 226
    .end local v20    # "k0":S
    .end local v21    # "k1":S
    .end local v22    # "k2":S
    .end local v23    # "k3":S
    .end local v24    # "k4":S
    .end local v25    # "k5":S
    :cond_3
    add-int/lit8 v48, v31, 0x1

    move/from16 v0, v48

    int-to-short v0, v0

    move/from16 v31, v0

    move v12, v13

    .end local v13    # "counter":I
    .restart local v12    # "counter":I
    goto :goto_3

    .line 245
    .end local v34    # "s":S
    :cond_4
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x4

    invoke-static/range {v48 .. v48}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 248
    .local v10, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v44

    .line 250
    .local v44, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 251
    const/16 v48, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x4

    invoke-static/range {v48 .. v48}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 256
    .local v15, "ee":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v37

    .line 258
    .local v37, "texBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 259
    const/16 v48, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x4

    invoke-static/range {v48 .. v48}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 264
    .local v16, "ee2":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v48

    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v38

    .line 266
    .local v38, "texBuffer2":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 267
    const/16 v48, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x2

    invoke-static/range {v48 .. v48}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 273
    .local v14, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v18

    .line 275
    .local v18, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual/range {v18 .. v19}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 276
    const/16 v48, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 279
    const/16 v48, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v48

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 280
    const/16 v48, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v48

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 281
    const/16 v48, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v48

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 282
    const/16 v48, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v48

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 283
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 284
    return-void
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0, p0}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->generateMesh(Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 160
    return-void
.end method
