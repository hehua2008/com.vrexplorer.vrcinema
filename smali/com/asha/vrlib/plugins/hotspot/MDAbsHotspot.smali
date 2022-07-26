.class public abstract Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;
.super Lcom/asha/vrlib/plugins/MDAbsPlugin;
.source "MDAbsHotspot.java"

# interfaces
.implements Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;


# instance fields
.field private clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

.field private hitPoint1:Lcom/asha/vrlib/model/MDHitPoint;

.field private hitPoint2:Lcom/asha/vrlib/model/MDHitPoint;

.field private mPendingRotateToCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

.field program:Lcom/asha/vrlib/MD360Program;

.field private size:Landroid/graphics/RectF;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDPluginBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDPluginBuilder;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;-><init>()V

    .line 49
    new-instance v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot$1;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot$1;-><init>(Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->hitPoint1:Lcom/asha/vrlib/model/MDHitPoint;

    .line 56
    new-instance v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot$2;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot$2;-><init>(Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->hitPoint2:Lcom/asha/vrlib/model/MDHitPoint;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->mPendingRotateToCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    iget-object v0, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->setTag(Ljava/lang/String;)V

    .line 67
    iget-object v0, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->setTitle(Ljava/lang/String;)V

    .line 68
    iget-object v0, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->width:F

    iget v2, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->height:F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->size:Landroid/graphics/RectF;

    .line 70
    iget-object v0, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->position:Lcom/asha/vrlib/model/MDPosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->setModelPosition(Lcom/asha/vrlib/model/MDPosition;)V

    .line 71
    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/asha/vrlib/model/MDPluginBuilder;->position:Lcom/asha/vrlib/model/MDPosition;

    goto :goto_0
.end method

.method private consumePendingRotateToCamera(Lcom/asha/vrlib/MD360Director;)V
    .locals 4
    .param p1, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->mPendingRotateToCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    .line 199
    .local v0, "position":Lcom/asha/vrlib/model/MDPosition;
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Director;->getWorldRotationInvert()[F

    move-result-object v1

    .line 200
    .local v1, "rotation":[F
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDPosition;->setRotationMatrix([F)V

    .line 201
    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->mPendingRotateToCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    .end local v0    # "position":Lcom/asha/vrlib/model/MDPosition;
    .end local v1    # "rotation":[F
    :cond_0
    return-void
.end method


# virtual methods
.method public beforeRenderer(II)V
    .locals 0
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 91
    return-void
.end method

.method public destroyInGL()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hit(Lcom/asha/vrlib/model/MDRay;)Lcom/asha/vrlib/model/MDHitPoint;
    .locals 13
    .param p1, "ray"    # Lcom/asha/vrlib/model/MDRay;

    .prologue
    .line 146
    iget-object v9, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getVerticesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    if-nez v9, :cond_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/asha/vrlib/model/MDHitPoint;->notHit()Lcom/asha/vrlib/model/MDHitPoint;

    move-result-object v9

    .line 171
    :goto_0
    return-object v9

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v7

    .line 151
    .local v7, "position":Lcom/asha/vrlib/model/MDPosition;
    invoke-virtual {v7}, Lcom/asha/vrlib/model/MDPosition;->getMatrix()[F

    move-result-object v4

    .line 153
    .local v4, "model":[F
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 155
    .local v6, "points":Ljava/util/List;, "Ljava/util/List<Lcom/asha/vrlib/model/MDVector3D;>;"
    iget-object v9, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/asha/vrlib/objects/MDAbsObject3D;->getVerticesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 156
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v9

    div-int/lit8 v5, v9, 0x3

    .line 158
    .local v5, "numPoints":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 159
    new-instance v8, Lcom/asha/vrlib/model/MDVector3D;

    invoke-direct {v8}, Lcom/asha/vrlib/model/MDVector3D;-><init>()V

    .line 160
    .local v8, "v":Lcom/asha/vrlib/model/MDVector3D;
    mul-int/lit8 v9, v3, 0x3

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/asha/vrlib/model/MDVector3D;->setX(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v9

    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/asha/vrlib/model/MDVector3D;->setY(F)Lcom/asha/vrlib/model/MDVector3D;

    move-result-object v9

    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/asha/vrlib/model/MDVector3D;->setZ(F)Lcom/asha/vrlib/model/MDVector3D;

    .line 161
    invoke-virtual {v8, v4}, Lcom/asha/vrlib/model/MDVector3D;->multiplyMV([F)V

    .line 162
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v8    # "v":Lcom/asha/vrlib/model/MDVector3D;
    :cond_2
    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->hitPoint1:Lcom/asha/vrlib/model/MDHitPoint;

    .line 165
    .local v1, "hit1":Lcom/asha/vrlib/model/MDHitPoint;
    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->hitPoint2:Lcom/asha/vrlib/model/MDHitPoint;

    .line 166
    .local v2, "hit2":Lcom/asha/vrlib/model/MDHitPoint;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 167
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asha/vrlib/model/MDVector3D;

    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/asha/vrlib/model/MDVector3D;

    const/4 v11, 0x2

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asha/vrlib/model/MDVector3D;

    iget-object v12, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->hitPoint1:Lcom/asha/vrlib/model/MDHitPoint;

    invoke-static {p1, v9, v10, v11, v12}, Lcom/asha/vrlib/common/VRUtil;->intersectTriangle(Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDHitPoint;)V

    .line 168
    const/4 v9, 0x3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asha/vrlib/model/MDVector3D;

    const/4 v10, 0x2

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/asha/vrlib/model/MDVector3D;

    const/4 v11, 0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asha/vrlib/model/MDVector3D;

    iget-object v12, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->hitPoint2:Lcom/asha/vrlib/model/MDHitPoint;

    invoke-static {p1, v9, v10, v11, v12}, Lcom/asha/vrlib/common/VRUtil;->intersectTriangle(Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDHitPoint;)V

    .line 171
    :cond_3
    invoke-static {v1, v2}, Lcom/asha/vrlib/model/MDHitPoint;->min(Lcom/asha/vrlib/model/MDHitPoint;Lcom/asha/vrlib/model/MDHitPoint;)Lcom/asha/vrlib/model/MDHitPoint;

    move-result-object v9

    goto/16 :goto_0
.end method

.method protected initInGL(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    new-instance v0, Lcom/asha/vrlib/MD360Program;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MD360Program;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->program:Lcom/asha/vrlib/MD360Program;

    .line 76
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MD360Program;->build(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/asha/vrlib/objects/MDPlane;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->size:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/objects/MDPlane;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    .line 80
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 81
    return-void
.end method

.method public onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V
    .locals 0
    .param p1, "hitEvent"    # Lcom/asha/vrlib/model/MDHitEvent;

    .prologue
    .line 177
    return-void
.end method

.method public onEyeHitOut(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 182
    return-void
.end method

.method public onTouchHit(Lcom/asha/vrlib/model/MDRay;)V
    .locals 1
    .param p1, "ray"    # Lcom/asha/vrlib/model/MDRay;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    invoke-interface {v0, p0, p1}, Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;->onHotspotHit(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;Lcom/asha/vrlib/model/MDRay;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected removable()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public renderer(IIILcom/asha/vrlib/MD360Director;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    const/16 v2, 0xbe2

    .line 97
    invoke-virtual {p4, p2, p3}, Lcom/asha/vrlib/MD360Director;->setViewport(II)V

    .line 100
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Program;->use()V

    .line 101
    const-string v0, "MDSimplePlugin mProgram use"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 105
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 108
    invoke-virtual {p4}, Lcom/asha/vrlib/MD360Director;->beforeShot()V

    .line 109
    invoke-direct {p0, p4}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->consumePendingRotateToCamera(Lcom/asha/vrlib/MD360Director;)V

    .line 110
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/asha/vrlib/MD360Director;->shot(Lcom/asha/vrlib/MD360Program;Lcom/asha/vrlib/model/MDPosition;)V

    .line 112
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 113
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 116
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    invoke-virtual {v0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->draw()V

    .line 117
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 119
    return-void
.end method

.method public rotateToCamera()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->mPendingRotateToCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->tag:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->title:Ljava/lang/String;

    .line 133
    return-void
.end method
