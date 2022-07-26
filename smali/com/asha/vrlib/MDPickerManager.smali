.class public Lcom/asha/vrlib/MDPickerManager;
.super Ljava/lang/Object;
.source "MDPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MDPickerManager$DirectorContext;,
        Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;,
        Lcom/asha/vrlib/MDPickerManager$EyePickPoster;,
        Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;,
        Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;,
        Lcom/asha/vrlib/MDPickerManager$Builder;
    }
.end annotation


# static fields
.field private static final HIT_FROM_EYE:I = 0x1

.field private static final HIT_FROM_TOUCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MDPickerManager"


# instance fields
.field private mDirectorContext:Lcom/asha/vrlib/MDPickerManager$DirectorContext;

.field private final mDirectorLock:Ljava/lang/Object;

.field private mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

.field private mEyePickChangedListener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

.field private mEyePickEnable:Z

.field private mEyePickPoster:Lcom/asha/vrlib/MDPickerManager$EyePickPoster;

.field private mEyePicker:Lcom/asha/vrlib/plugins/MDAbsPlugin;

.field private mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

.field private mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

.field private mRayPickAsEyeRunnable:Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;

.field private mRayPickAsTouchRunnable:Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;

.field private mTouchPickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

.field private mTouchPickPoster:Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;

.field private mTouchPicker:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDPickerManager$Builder;)V
    .locals 2
    .param p1, "params"    # Lcom/asha/vrlib/MDPickerManager$Builder;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;-><init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickPoster:Lcom/asha/vrlib/MDPickerManager$EyePickPoster;

    .line 51
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;-><init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mTouchPickPoster:Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;

    .line 53
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;-><init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mRayPickAsTouchRunnable:Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;

    .line 55
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;-><init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mRayPickAsEyeRunnable:Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;

    .line 57
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;-><init>(Lcom/asha/vrlib/MDPickerManager$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mDirectorContext:Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mDirectorLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$1;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/MDPickerManager$1;-><init>(Lcom/asha/vrlib/MDPickerManager;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mTouchPicker:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    .line 69
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$2;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/MDPickerManager$2;-><init>(Lcom/asha/vrlib/MDPickerManager;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePicker:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 91
    invoke-static {p1}, Lcom/asha/vrlib/MDPickerManager$Builder;->access$1000(Lcom/asha/vrlib/MDPickerManager$Builder;)Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 92
    invoke-static {p1}, Lcom/asha/vrlib/MDPickerManager$Builder;->access$1100(Lcom/asha/vrlib/MDPickerManager$Builder;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 93
    invoke-static {p1}, Lcom/asha/vrlib/MDPickerManager$Builder;->access$1200(Lcom/asha/vrlib/MDPickerManager$Builder;)Lcom/asha/vrlib/plugins/MDPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager$Builder;Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager$Builder;
    .param p2, "x1"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDPickerManager;-><init>(Lcom/asha/vrlib/MDPickerManager$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/asha/vrlib/MDPickerManager;FFLcom/asha/vrlib/MDPickerManager$DirectorContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/asha/vrlib/MDPickerManager;->rayPickAsTouch(FFLcom/asha/vrlib/MDPickerManager$DirectorContext;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$DirectorContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;
    .param p1, "x1"    # Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDPickerManager;->rayPickAsEye(Lcom/asha/vrlib/MDPickerManager$DirectorContext;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickChangedListener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mTouchPickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mRayPickAsTouchRunnable:Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asha/vrlib/MDPickerManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mDirectorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$DirectorContext;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mDirectorContext:Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mRayPickAsEyeRunnable:Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;

    return-object v0
.end method

.method private hitTest(Lcom/asha/vrlib/model/MDRay;I)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .locals 8
    .param p1, "ray"    # Lcom/asha/vrlib/model/MDRay;
    .param p2, "hitType"    # I

    .prologue
    .line 151
    const-string v6, "hitTest must in main thread"

    invoke-static {v6}, Lcom/asha/vrlib/common/VRUtil;->checkMainThread(Ljava/lang/String;)V

    .line 153
    iget-object v6, p0, Lcom/asha/vrlib/MDPickerManager;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v6}, Lcom/asha/vrlib/plugins/MDPluginManager;->getPlugins()Ljava/util/List;

    move-result-object v4

    .line 154
    .local v4, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/asha/vrlib/plugins/MDAbsPlugin;>;"
    const/4 v1, 0x0

    .line 155
    .local v1, "hitHotspot":Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    invoke-static {}, Lcom/asha/vrlib/model/MDHitPoint;->notHit()Lcom/asha/vrlib/model/MDHitPoint;

    move-result-object v0

    .line 157
    .local v0, "currentDistance":Lcom/asha/vrlib/model/MDHitPoint;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 158
    .local v3, "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    instance-of v7, v3, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    if-eqz v7, :cond_0

    move-object v2, v3

    .line 159
    check-cast v2, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .line 160
    .local v2, "hotspot":Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    invoke-interface {v2, p1}, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;->hit(Lcom/asha/vrlib/model/MDRay;)Lcom/asha/vrlib/model/MDHitPoint;

    move-result-object v5

    .line 161
    .local v5, "tmpDistance":Lcom/asha/vrlib/model/MDHitPoint;
    invoke-virtual {v5}, Lcom/asha/vrlib/model/MDHitPoint;->isNotHit()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v0}, Lcom/asha/vrlib/model/MDHitPoint;->nearThen(Lcom/asha/vrlib/model/MDHitPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    move-object v1, v2

    .line 163
    move-object v0, v5

    goto :goto_0

    .line 168
    .end local v2    # "hotspot":Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .end local v3    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .end local v5    # "tmpDistance":Lcom/asha/vrlib/model/MDHitPoint;
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 182
    :cond_2
    :goto_1
    return-object v1

    .line 171
    :pswitch_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/asha/vrlib/model/MDHitPoint;->isNotHit()Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    invoke-interface {v1, p1}, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;->onTouchHit(Lcom/asha/vrlib/model/MDRay;)V

    .line 173
    iget-object v6, p0, Lcom/asha/vrlib/MDPickerManager;->mTouchPickPoster:Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;

    invoke-virtual {v6, v1, p1, v0}, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;->fire(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDHitPoint;)V

    goto :goto_1

    .line 178
    :pswitch_1
    iget-object v6, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickPoster:Lcom/asha/vrlib/MDPickerManager$EyePickPoster;

    invoke-virtual {v6, v1, p1, v0}, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->fire(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDHitPoint;)V

    goto :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pick(Lcom/asha/vrlib/model/MDRay;I)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .locals 1
    .param p1, "ray"    # Lcom/asha/vrlib/model/MDRay;
    .param p2, "hitType"    # I

    .prologue
    .line 145
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/MDPickerManager;->hitTest(Lcom/asha/vrlib/model/MDRay;I)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    move-result-object v0

    goto :goto_0
.end method

.method private rayPickAsEye(Lcom/asha/vrlib/MDPickerManager$DirectorContext;)V
    .locals 5
    .param p1, "mDirectorContext"    # Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->getSnapshot(I)Lcom/asha/vrlib/model/MDDirectorSnapshot;

    move-result-object v1

    .line 136
    .local v1, "snapshot":Lcom/asha/vrlib/model/MDDirectorSnapshot;
    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {v1}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getViewportWidth()F

    move-result v2

    div-float/2addr v2, v4

    invoke-virtual {v1}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getViewportHeight()F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v2, v3, v1}, Lcom/asha/vrlib/common/VRUtil;->point2Ray(FFLcom/asha/vrlib/model/MDDirectorSnapshot;)Lcom/asha/vrlib/model/MDRay;

    move-result-object v0

    .line 141
    .local v0, "ray":Lcom/asha/vrlib/model/MDRay;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/asha/vrlib/MDPickerManager;->pick(Lcom/asha/vrlib/model/MDRay;I)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    goto :goto_0
.end method

.method private rayPickAsTouch(FFLcom/asha/vrlib/MDPickerManager$DirectorContext;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "directorContext"    # Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    .prologue
    .line 106
    iget-object v5, p0, Lcom/asha/vrlib/MDPickerManager;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v5}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->getVisibleSize()I

    move-result v3

    .line 107
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->getSnapshot(I)Lcom/asha/vrlib/model/MDDirectorSnapshot;

    move-result-object v4

    .line 112
    .local v4, "snapshot":Lcom/asha/vrlib/model/MDDirectorSnapshot;
    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {v4}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->getViewportWidth()F

    move-result v5

    float-to-int v1, v5

    .line 118
    .local v1, "itemWidth":I
    int-to-float v5, v1

    div-float v5, p1, v5

    float-to-int v0, v5

    .line 119
    .local v0, "index":I
    if-ge v0, v3, :cond_0

    .line 123
    invoke-virtual {p3, v0}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->getSnapshot(I)Lcom/asha/vrlib/model/MDDirectorSnapshot;

    move-result-object v4

    .line 124
    if-eqz v4, :cond_0

    .line 128
    mul-int v5, v1, v0

    int-to-float v5, v5

    sub-float v5, p1, v5

    invoke-static {v5, p2, v4}, Lcom/asha/vrlib/common/VRUtil;->point2Ray(FFLcom/asha/vrlib/model/MDDirectorSnapshot;)Lcom/asha/vrlib/model/MDRay;

    move-result-object v2

    .line 130
    .local v2, "ray":Lcom/asha/vrlib/model/MDRay;
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/asha/vrlib/MDPickerManager;->pick(Lcom/asha/vrlib/model/MDRay;I)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    goto :goto_0
.end method

.method public static with()Lcom/asha/vrlib/MDPickerManager$Builder;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/asha/vrlib/MDPickerManager$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MDPickerManager$Builder;-><init>(Lcom/asha/vrlib/MDPickerManager$1;)V

    return-object v0
.end method


# virtual methods
.method public getEyePicker()Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePicker:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    return-object v0
.end method

.method public getTouchPicker()Lcom/asha/vrlib/MDVRLibrary$IGestureListener;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mTouchPicker:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    return-object v0
.end method

.method public isEyePickEnable()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickEnable:Z

    return v0
.end method

.method resetEyePick()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickPoster:Lcom/asha/vrlib/MDPickerManager$EyePickPoster;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickPoster:Lcom/asha/vrlib/MDPickerManager$EyePickPoster;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->setHit(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setEyePickChangedListener(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;)V
    .locals 0
    .param p1, "eyePickChangedListener"    # Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickChangedListener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    .line 199
    return-void
.end method

.method public setEyePickEnable(Z)V
    .locals 0
    .param p1, "eyePickEnable"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/asha/vrlib/MDPickerManager;->mEyePickEnable:Z

    .line 102
    return-void
.end method

.method public setTouchPickListener(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;)V
    .locals 0
    .param p1, "touchPickListener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager;->mTouchPickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    .line 203
    return-void
.end method
