.class Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;
.super Lcom/asha/vrlib/objects/MDAbsObject3D;
.source "MDBarrelDistortionLinePipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MDBarrelDistortionMesh"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MDBarrelDistortionMesh"


# instance fields
.field private mode:I

.field private singleTexCoordinateBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    invoke-direct {p0}, Lcom/asha/vrlib/objects/MDAbsObject3D;-><init>()V

    .line 123
    return-void
.end method

.method private applyBarrelDistortion(I[F)V
    .locals 12
    .param p1, "numPoint"    # I
    .param p2, "vertexs"    # [F

    .prologue
    .line 254
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 256
    .local v6, "pointF":Landroid/graphics/PointF;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p1, :cond_0

    .line 257
    mul-int/lit8 v8, v7, 0x3

    .line 258
    .local v8, "xIndex":I
    mul-int/lit8 v0, v7, 0x3

    add-int/lit8 v10, v0, 0x1

    .line 259
    .local v10, "yIndex":I
    aget v9, p2, v8

    .line 260
    .local v9, "xValue":F
    aget v11, p2, v10

    .line 262
    .local v11, "yValue":F
    invoke-virtual {v6, v9, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 263
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    invoke-static {v0}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->access$000(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/model/BarrelDistortionConfig;->getParamA()D

    move-result-wide v0

    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    .line 264
    invoke-static {v2}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->access$000(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asha/vrlib/model/BarrelDistortionConfig;->getParamB()D

    move-result-wide v2

    iget-object v4, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    .line 265
    invoke-static {v4}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->access$000(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asha/vrlib/model/BarrelDistortionConfig;->getParamC()D

    move-result-wide v4

    .line 263
    invoke-static/range {v0 .. v6}, Lcom/asha/vrlib/common/VRUtil;->barrelDistortion(DDDLandroid/graphics/PointF;)V

    .line 268
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    invoke-static {v1}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->access$000(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asha/vrlib/model/BarrelDistortionConfig;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    aput v0, p2, v8

    .line 269
    iget v0, v6, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->this$0:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    invoke-static {v1}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->access$000(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asha/vrlib/model/BarrelDistortionConfig;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    aput v0, p2, v10

    .line 256
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 273
    .end local v8    # "xIndex":I
    .end local v9    # "xValue":F
    .end local v10    # "yIndex":I
    .end local v11    # "yValue":F
    :cond_0
    return-void
.end method

.method private generateMesh(Lcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 43
    .param p1, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 142
    const/16 v23, 0xa

    .line 143
    .local v23, "rows":I
    const/16 v7, 0xa

    .line 144
    .local v7, "columns":I
    const/16 v41, 0xb

    mul-int/lit8 v21, v41, 0xb

    .line 146
    .local v21, "numPoint":I
    const/high16 v40, -0x3f000000    # -8.0f

    .line 147
    .local v40, "z":F
    const/high16 v41, 0x3f800000    # 1.0f

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v3, v41, v42

    .line 148
    .local v3, "R":F
    const/high16 v41, 0x3f800000    # 1.0f

    int-to-float v0, v7

    move/from16 v42, v0

    div-float v4, v41, v42

    .line 150
    .local v4, "S":F
    const/16 v41, 0x16b

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v39, v0

    .line 151
    .local v39, "vertexs":[F
    const/16 v41, 0xf2

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 152
    .local v31, "texcoords":[F
    const/16 v41, 0xf2

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v32, v0

    .line 153
    .local v32, "texcoords1":[F
    const/16 v41, 0xf2

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v33, v0

    .line 154
    .local v33, "texcoords2":[F
    const/16 v41, 0x2d6

    move/from16 v0, v41

    new-array v14, v0, [S

    .line 157
    .local v14, "indices":[S
    const/16 v26, 0x0

    .line 158
    .local v26, "t":I
    const/16 v36, 0x0

    .line 159
    .local v36, "v":I
    const/16 v22, 0x0

    .local v22, "r":S
    :goto_0
    const/16 v41, 0xb

    move/from16 v0, v22

    move/from16 v1, v41

    if-ge v0, v1, :cond_1

    .line 160
    const/16 v24, 0x0

    .local v24, "s":S
    move/from16 v37, v36

    .end local v36    # "v":I
    .local v37, "v":I
    move/from16 v27, v26

    .end local v26    # "t":I
    .local v27, "t":I
    :goto_1
    const/16 v41, 0xb

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_0

    .line 161
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "t":I
    .restart local v26    # "t":I
    move/from16 v34, v27

    .line 162
    .local v34, "tu":I
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "t":I
    .restart local v27    # "t":I
    move/from16 v35, v26

    .line 164
    .local v35, "tv":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v4

    aput v41, v31, v34

    .line 165
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v3

    aput v41, v31, v35

    .line 167
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v4

    const/high16 v42, 0x3f000000    # 0.5f

    mul-float v41, v41, v42

    aput v41, v32, v34

    .line 168
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v3

    aput v41, v32, v35

    .line 170
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v4

    const/high16 v42, 0x3f000000    # 0.5f

    mul-float v41, v41, v42

    const/high16 v42, 0x3f000000    # 0.5f

    add-float v41, v41, v42

    aput v41, v33, v34

    .line 171
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v3

    aput v41, v33, v35

    .line 173
    add-int/lit8 v36, v37, 0x1

    .end local v37    # "v":I
    .restart local v36    # "v":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v4

    const/high16 v42, 0x40000000    # 2.0f

    mul-float v41, v41, v42

    const/high16 v42, 0x3f800000    # 1.0f

    sub-float v41, v41, v42

    aput v41, v39, v37

    .line 174
    add-int/lit8 v37, v36, 0x1

    .end local v36    # "v":I
    .restart local v37    # "v":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v41, v41, v3

    const/high16 v42, 0x40000000    # 2.0f

    mul-float v41, v41, v42

    const/high16 v42, 0x3f800000    # 1.0f

    sub-float v41, v41, v42

    aput v41, v39, v36

    .line 175
    add-int/lit8 v36, v37, 0x1

    .end local v37    # "v":I
    .restart local v36    # "v":I
    aput v40, v39, v37

    .line 160
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v24, v0

    move/from16 v37, v36

    .end local v36    # "v":I
    .restart local v37    # "v":I
    goto/16 :goto_1

    .line 159
    .end local v34    # "tu":I
    .end local v35    # "tv":I
    :cond_0
    add-int/lit8 v41, v22, 0x1

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v36, v37

    .end local v37    # "v":I
    .restart local v36    # "v":I
    move/from16 v26, v27

    .end local v27    # "t":I
    .restart local v26    # "t":I
    goto/16 :goto_0

    .line 179
    .end local v24    # "s":S
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->applyBarrelDistortion(I[F)V

    .line 181
    const/4 v8, 0x0

    .line 182
    .local v8, "counter":I
    add-int/lit8 v25, v7, 0x1

    .line 183
    .local v25, "sectorsPlusOne":I
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 184
    const/16 v24, 0x0

    .restart local v24    # "s":S
    move v9, v8

    .end local v8    # "counter":I
    .local v9, "counter":I
    :goto_3
    move/from16 v0, v24

    if-ge v0, v7, :cond_2

    .line 185
    mul-int/lit8 v41, v22, 0xb

    add-int/lit8 v42, v24, 0x1

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-short v15, v0

    .line 186
    .local v15, "k0":S
    add-int/lit8 v41, v22, 0x1

    mul-int/lit8 v41, v41, 0xb

    add-int v41, v41, v24

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v16, v0

    .line 187
    .local v16, "k1":S
    mul-int/lit8 v41, v22, 0xb

    add-int v41, v41, v24

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v17, v0

    .line 188
    .local v17, "k2":S
    mul-int/lit8 v41, v22, 0xb

    add-int/lit8 v42, v24, 0x1

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v18, v0

    .line 189
    .local v18, "k3":S
    add-int/lit8 v41, v22, 0x1

    mul-int/lit8 v41, v41, 0xb

    add-int/lit8 v42, v24, 0x1

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v19, v0

    .line 190
    .local v19, "k4":S
    add-int/lit8 v41, v22, 0x1

    mul-int/lit8 v41, v41, 0xb

    add-int v41, v41, v24

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v20, v0

    .line 192
    .local v20, "k5":S
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "counter":I
    .restart local v8    # "counter":I
    aput-short v15, v14, v9

    .line 193
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "counter":I
    .restart local v9    # "counter":I
    aput-short v16, v14, v8

    .line 194
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "counter":I
    .restart local v8    # "counter":I
    aput-short v17, v14, v9

    .line 195
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "counter":I
    .restart local v9    # "counter":I
    aput-short v18, v14, v8

    .line 196
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "counter":I
    .restart local v8    # "counter":I
    aput-short v19, v14, v9

    .line 197
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "counter":I
    .restart local v9    # "counter":I
    aput-short v20, v14, v8

    .line 184
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v24, v0

    goto :goto_3

    .line 183
    .end local v15    # "k0":S
    .end local v16    # "k1":S
    .end local v17    # "k2":S
    .end local v18    # "k3":S
    .end local v19    # "k4":S
    .end local v20    # "k5":S
    :cond_2
    add-int/lit8 v41, v22, 0x1

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v22, v0

    move v8, v9

    .end local v9    # "counter":I
    .restart local v8    # "counter":I
    goto :goto_2

    .line 202
    .end local v24    # "s":S
    :cond_3
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x4

    invoke-static/range {v41 .. v41}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 205
    .local v5, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 206
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v38

    .line 207
    .local v38, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual/range {v38 .. v39}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 208
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x4

    invoke-static/range {v41 .. v41}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 213
    .local v12, "ee":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 214
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v28

    .line 215
    .local v28, "texBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 216
    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x4

    invoke-static/range {v41 .. v41}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 221
    .local v6, "cc":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v29

    .line 223
    .local v29, "texBuffer1":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 224
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x4

    invoke-static/range {v41 .. v41}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 229
    .local v10, "dd":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v30

    .line 231
    .local v30, "texBuffer2":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 232
    const/16 v41, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    array-length v0, v14

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    invoke-static/range {v41 .. v41}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 238
    .local v11, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 239
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v13

    .line 240
    .local v13, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v13, v14}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 241
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setIndicesBuffer(Ljava/nio/ShortBuffer;)V

    .line 244
    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 245
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 246
    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 247
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 248
    array-length v0, v14

    move/from16 v41, v0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 250
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->singleTexCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 251
    return-void
.end method


# virtual methods
.method protected executeLoad(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0, p0}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->generateMesh(Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 139
    return-void
.end method

.method public getTexCoordinateBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->singleTexCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    invoke-super {p0, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getTexCoordinateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->mode:I

    .line 277
    return-void
.end method
