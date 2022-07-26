.class public Lcom/asha/vrlib/common/VRUtil;
.super Ljava/lang/Object;
.source "VRUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VRUtil"

.field private static sGLThreadTmp:[F

.field private static sIsTruncated:Z

.field private static sTruncatedVector:[F

.field private static sUIThreadTmp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 23
    new-array v0, v1, [F

    sput-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    .line 24
    new-array v0, v1, [F

    sput-object v0, Lcom/asha/vrlib/common/VRUtil;->sGLThreadTmp:[F

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/asha/vrlib/common/VRUtil;->sTruncatedVector:[F

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asha/vrlib/common/VRUtil;->sIsTruncated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static barrelDistortion(DDDLandroid/graphics/PointF;)V
    .locals 26
    .param p0, "paramA"    # D
    .param p2, "paramB"    # D
    .param p4, "paramC"    # D
    .param p6, "src"    # Landroid/graphics/PointF;

    .prologue
    .line 85
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, p0

    sub-double v22, v22, p2

    sub-double v16, v22, p4

    .line 87
    .local v16, "paramD":D
    const/high16 v6, 0x3f800000    # 1.0f

    .line 90
    .local v6, "d":F
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "centerX":D
    const-wide/16 v4, 0x0

    .line 93
    .local v4, "centerY":D
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v21, v22, v2

    if-nez v21, :cond_0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v21, v22, v4

    if-nez v21, :cond_0

    .line 115
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v22, v2

    float-to-double v0, v6

    move-wide/from16 v24, v0

    div-double v8, v22, v24

    .line 99
    .local v8, "deltaX":D
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v22, v4

    float-to-double v0, v6

    move-wide/from16 v24, v0

    div-double v10, v22, v24

    .line 102
    .local v10, "deltaY":D
    mul-double v22, v8, v8

    mul-double v24, v10, v10

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 105
    .local v12, "dstR":D
    mul-double v22, p0, v12

    mul-double v22, v22, v12

    mul-double v22, v22, v12

    mul-double v24, p2, v12

    mul-double v24, v24, v12

    add-double v22, v22, v24

    mul-double v24, p4, v12

    add-double v22, v22, v24

    add-double v22, v22, v16

    mul-double v18, v22, v12

    .line 108
    .local v18, "srcR":D
    div-double v22, v12, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 111
    .local v14, "factor":D
    mul-double v22, v8, v14

    float-to-double v0, v6

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v22, v22, v2

    move-wide/from16 v0, v22

    double-to-float v7, v0

    .line 112
    .local v7, "xResult":F
    mul-double v22, v10, v14

    float-to-double v0, v6

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v22, v22, v4

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v20, v0

    .line 114
    .local v20, "yResult":F
    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public static checkGLThread(Ljava/lang/String;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method public static checkMainThread(Ljava/lang/String;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method public static getEulerAngles([F[F)V
    .locals 13
    .param p0, "headView"    # [F
    .param p1, "output"    # [F

    .prologue
    const/4 v8, 0x6

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 229
    aget v6, p0, v8

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 232
    .local v0, "pitch":F
    aget v6, p0, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3feffffffff24190L    # 0.9999999999

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 233
    aget v6, p0, v12

    neg-float v6, v6

    float-to-double v6, v6

    const/16 v8, 0xa

    aget v8, p0, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 234
    .local v4, "yaw":F
    const/4 v6, 0x4

    aget v6, p0, v6

    neg-float v6, v6

    float-to-double v6, v6

    const/4 v8, 0x5

    aget v8, p0, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 239
    .local v2, "roll":F
    :goto_0
    neg-float v6, v0

    aput v6, p1, v10

    .line 240
    neg-float v6, v4

    aput v6, p1, v11

    .line 241
    neg-float v6, v2

    aput v6, p1, v12

    .line 242
    aget v6, p1, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 243
    .local v1, "pitchAngle":F
    aget v6, p1, v11

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 244
    .local v5, "yawAngle":F
    aget v6, p1, v12

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 246
    .local v3, "rollAngle":F
    const-string v6, "VRUtil"

    const-string v7, "pitchAngle=%f, yawAngle=%f, rollAngle=%f"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 236
    .end local v1    # "pitchAngle":F
    .end local v2    # "roll":F
    .end local v3    # "rollAngle":F
    .end local v4    # "yaw":F
    .end local v5    # "yawAngle":F
    :cond_0
    const/4 v4, 0x0

    .line 237
    .restart local v4    # "yaw":F
    aget v6, p0, v11

    float-to-double v6, v6

    aget v8, p0, v10

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .restart local v2    # "roll":F
    goto :goto_0
.end method

.method public static intersectTriangle(Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDHitPoint;)V
    .locals 11
    .param p0, "ray"    # Lcom/asha/vrlib/model/MDRay;
    .param p1, "v0"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p2, "v1"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p3, "v2"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p4, "result"    # Lcom/asha/vrlib/model/MDHitPoint;

    .prologue
    .line 172
    invoke-static {p2, p1}, Lcom/asha/vrlib/common/VRUtil;->vec3Sub(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v1

    .line 173
    .local v1, "edge1":Lcom/asha/vrlib/model/MDVector3D;
    invoke-static {p3, p1}, Lcom/asha/vrlib/common/VRUtil;->vec3Sub(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v2

    .line 177
    .local v2, "edge2":Lcom/asha/vrlib/model/MDVector3D;
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDRay;->getDir()Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/asha/vrlib/common/VRUtil;->vec3Cross(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v4

    .line 180
    .local v4, "pvec":Lcom/asha/vrlib/model/MDVector3D;
    invoke-static {v1, v4}, Lcom/asha/vrlib/common/VRUtil;->vec3Dot(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)F

    move-result v0

    .line 183
    .local v0, "det":F
    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-lez v10, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDRay;->getOrig()Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/asha/vrlib/common/VRUtil;->vec3Sub(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v7

    .line 190
    .local v7, "tvec":Lcom/asha/vrlib/model/MDVector3D;
    :goto_0
    const v10, 0x38d1b717    # 1.0E-4f

    cmpg-float v10, v0, v10

    if-gez v10, :cond_1

    .line 191
    invoke-virtual {p4}, Lcom/asha/vrlib/model/MDHitPoint;->asNotHit()V

    .line 226
    :goto_1
    return-void

    .line 186
    .end local v7    # "tvec":Lcom/asha/vrlib/model/MDVector3D;
    :cond_0
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDRay;->getOrig()Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/asha/vrlib/common/VRUtil;->vec3Sub(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v7

    .line 187
    .restart local v7    # "tvec":Lcom/asha/vrlib/model/MDVector3D;
    neg-float v0, v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {v7, v4}, Lcom/asha/vrlib/common/VRUtil;->vec3Dot(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)F

    move-result v8

    .line 197
    .local v8, "u":F
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-ltz v10, :cond_2

    cmpl-float v10, v8, v0

    if-lez v10, :cond_3

    .line 198
    :cond_2
    invoke-virtual {p4}, Lcom/asha/vrlib/model/MDHitPoint;->asNotHit()V

    goto :goto_1

    .line 204
    :cond_3
    invoke-static {v7, v1}, Lcom/asha/vrlib/common/VRUtil;->vec3Cross(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v5

    .line 207
    .local v5, "qvec":Lcom/asha/vrlib/model/MDVector3D;
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDRay;->getDir()Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/asha/vrlib/common/VRUtil;->vec3Dot(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)F

    move-result v9

    .line 208
    .local v9, "v":F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-ltz v10, :cond_4

    add-float v10, v8, v9

    cmpl-float v10, v10, v0

    if-lez v10, :cond_5

    .line 209
    :cond_4
    invoke-virtual {p4}, Lcom/asha/vrlib/model/MDHitPoint;->asNotHit()V

    goto :goto_1

    .line 214
    :cond_5
    invoke-static {v2, v5}, Lcom/asha/vrlib/common/VRUtil;->vec3Dot(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)F

    move-result v6

    .line 215
    .local v6, "t":F
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v3, v10, v0

    .line 216
    .local v3, "fInvDet":F
    mul-float/2addr v6, v3

    .line 217
    mul-float/2addr v8, v3

    .line 218
    mul-float/2addr v9, v3

    .line 220
    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-lez v10, :cond_6

    .line 221
    invoke-virtual {p4}, Lcom/asha/vrlib/model/MDHitPoint;->asNotHit()V

    goto :goto_1

    .line 225
    :cond_6
    invoke-virtual {p4, v6, v8, v9}, Lcom/asha/vrlib/model/MDHitPoint;->set(FFF)V

    goto :goto_1
.end method

.method public static invertM([F[F)Z
    .locals 1
    .param p0, "output"    # [F
    .param p1, "input"    # [F

    .prologue
    const/4 v0, 0x0

    .line 136
    if-ne p1, p0, :cond_0

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, p1, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    goto :goto_0
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public static point2Ray(FFLcom/asha/vrlib/model/MDDirectorSnapshot;)Lcom/asha/vrlib/model/MDRay;
    .locals 13
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "info"    # Lcom/asha/vrlib/model/MDDirectorSnapshot;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 144
    const-string v7, "point2Ray must called in main Thread"

    invoke-static {v7}, Lcom/asha/vrlib/common/VRUtil;->checkMainThread(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getViewMatrix()[F

    move-result-object v6

    .line 146
    .local v6, "view":[F
    sget-object v2, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    .line 147
    .local v2, "temp":[F
    invoke-static {v2, v6}, Lcom/asha/vrlib/common/VRUtil;->invertM([F[F)Z

    move-result v1

    .line 148
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 149
    new-instance v3, Lcom/asha/vrlib/model/MDVector3D;

    invoke-direct {v3}, Lcom/asha/vrlib/model/MDVector3D;-><init>()V

    .line 150
    .local v3, "v":Lcom/asha/vrlib/model/MDVector3D;
    invoke-virtual {p2}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getProjectionMatrix()[F

    move-result-object v0

    .line 151
    .local v0, "projection":[F
    mul-float v7, v10, p0

    invoke-virtual {p2}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getViewportWidth()F

    move-result v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v9

    neg-float v7, v7

    aget v8, v0, v11

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/asha/vrlib/model/MDVector3D;->setX(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 152
    mul-float v7, v10, p1

    invoke-virtual {p2}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getViewportHeight()F

    move-result v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v9

    aget v8, v0, v12

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/asha/vrlib/model/MDVector3D;->setY(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 153
    invoke-virtual {v3, v9}, Lcom/asha/vrlib/model/MDVector3D;->setZ(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 155
    new-instance v4, Lcom/asha/vrlib/model/MDVector3D;

    invoke-direct {v4}, Lcom/asha/vrlib/model/MDVector3D;-><init>()V

    .line 156
    .local v4, "vPickRayDir":Lcom/asha/vrlib/model/MDVector3D;
    new-instance v5, Lcom/asha/vrlib/model/MDVector3D;

    invoke-direct {v5}, Lcom/asha/vrlib/model/MDVector3D;-><init>()V

    .line 158
    .local v5, "vPickRayOrig":Lcom/asha/vrlib/model/MDVector3D;
    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v7

    aget v8, v2, v11

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v8

    const/4 v9, 0x4

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v8

    const/16 v9, 0x8

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/asha/vrlib/model/MDVector3D;->setX(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 159
    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v7

    const/4 v8, 0x1

    aget v8, v2, v8

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v8

    aget v9, v2, v12

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v8

    const/16 v9, 0x9

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/asha/vrlib/model/MDVector3D;->setY(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 160
    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v7

    const/4 v8, 0x2

    aget v8, v2, v8

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v8

    const/4 v9, 0x6

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v8

    const/16 v9, 0xa

    aget v9, v2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/asha/vrlib/model/MDVector3D;->setZ(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 161
    const/16 v7, 0xc

    aget v7, v2, v7

    invoke-virtual {v5, v7}, Lcom/asha/vrlib/model/MDVector3D;->setX(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 162
    const/16 v7, 0xd

    aget v7, v2, v7

    invoke-virtual {v5, v7}, Lcom/asha/vrlib/model/MDVector3D;->setY(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 163
    const/16 v7, 0xe

    aget v7, v2, v7

    invoke-virtual {v5, v7}, Lcom/asha/vrlib/model/MDVector3D;->setZ(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 164
    new-instance v7, Lcom/asha/vrlib/model/MDRay;

    invoke-direct {v7, v5, v4}, Lcom/asha/vrlib/model/MDRay;-><init>(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)V

    .line 166
    .end local v0    # "projection":[F
    .end local v3    # "v":Lcom/asha/vrlib/model/MDVector3D;
    .end local v4    # "vPickRayDir":Lcom/asha/vrlib/model/MDVector3D;
    .end local v5    # "vPickRayOrig":Lcom/asha/vrlib/model/MDVector3D;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static printMatrix([F)V
    .locals 9
    .param p0, "m"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    const-string v0, "VRUtil"

    const-string v1, "printMatrix"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v0, "VRUtil"

    const-string v1, "%f, %f, %f, %f"

    new-array v2, v8, [Ljava/lang/Object;

    aget v3, p0, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, p0, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, p0, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    aget v3, p0, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "VRUtil"

    const-string v1, "%f, %f, %f, %f"

    new-array v2, v8, [Ljava/lang/Object;

    aget v3, p0, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x7

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "VRUtil"

    const-string v1, "%f, %f, %f, %f"

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v3, 0x8

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x9

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xb

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "VRUtil"

    const-string v1, "%f, %f, %f, %f"

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v3, 0xc

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xd

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xf

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public static sensorRotationVector2Matrix(Landroid/hardware/SensorEvent;I[F)V
    .locals 8
    .param p0, "event"    # Landroid/hardware/SensorEvent;
    .param p1, "rotation"    # I
    .param p2, "output"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 30
    sget-boolean v0, Lcom/asha/vrlib/common/VRUtil;->sIsTruncated:Z

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    sget-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    iget-object v2, p0, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/asha/vrlib/common/VRUtil;->sIsTruncated:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    sget-object v2, Lcom/asha/vrlib/common/VRUtil;->sTruncatedVector:[F

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    sget-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    sget-object v2, Lcom/asha/vrlib/common/VRUtil;->sTruncatedVector:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 47
    :cond_1
    iget-object v7, p0, Landroid/hardware/SensorEvent;->values:[F

    .line 48
    .local v7, "values":[F
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_1
    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 63
    return-void

    .line 33
    .end local v7    # "values":[F
    :catch_0
    move-exception v6

    .line 37
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "VRUtil"

    const-string v2, "maybe Samsung bug, will truncate vector"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sput-boolean v5, Lcom/asha/vrlib/common/VRUtil;->sIsTruncated:Z

    goto :goto_0

    .line 51
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "values":[F
    :pswitch_0
    invoke-static {p2, v7}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_1

    .line 54
    :pswitch_1
    sget-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    invoke-static {v0, v7}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 55
    sget-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    const/4 v2, 0x2

    const/16 v3, 0x81

    invoke-static {v0, v2, v3, p2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_1

    .line 58
    :pswitch_2
    sget-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    invoke-static {v0, v7}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 59
    sget-object v0, Lcom/asha/vrlib/common/VRUtil;->sUIThreadTmp:[F

    const/16 v2, 0x82

    invoke-static {v0, v2, v5, p2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static vec3Cross(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;
    .locals 4
    .param p0, "v1"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p1, "v2"    # Lcom/asha/vrlib/model/MDVector3D;

    .prologue
    .line 122
    new-instance v0, Lcom/asha/vrlib/model/MDVector3D;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDVector3D;-><init>()V

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDVector3D;->setX(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDVector3D;->setY(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDVector3D;->setZ(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method public static vec3Dot(FFFFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 132
    mul-float v0, p0, p3

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    return v0
.end method

.method public static vec3Dot(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)F
    .locals 6
    .param p0, "v1"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p1, "v2"    # Lcom/asha/vrlib/model/MDVector3D;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/asha/vrlib/common/VRUtil;->vec3Dot(FFFFFF)F

    move-result v0

    return v0
.end method

.method public static vec3Sub(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)Lcom/asha/vrlib/model/MDVector3D;
    .locals 3
    .param p0, "v1"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p1, "v2"    # Lcom/asha/vrlib/model/MDVector3D;

    .prologue
    .line 118
    new-instance v0, Lcom/asha/vrlib/model/MDVector3D;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDVector3D;-><init>()V

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDVector3D;->setX(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDVector3D;->setY(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDVector3D;->setZ(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v0

    return-object v0
.end method
