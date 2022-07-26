.class public Lcom/asha/vrlib/MDVRLibrary;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MDVRLibrary$ContentType;,
        Lcom/asha/vrlib/MDVRLibrary$Builder;,
        Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;,
        Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;,
        Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;,
        Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;,
        Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;,
        Lcom/asha/vrlib/MDVRLibrary$DirectorFilterAdatper;,
        Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;,
        Lcom/asha/vrlib/MDVRLibrary$IGestureListener;,
        Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;,
        Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;,
        Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;,
        Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;,
        Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;
    }
.end annotation


# static fields
.field public static final DISPLAY_MODE_GLASS:I = 0x66

.field public static final DISPLAY_MODE_NORMAL:I = 0x65

.field public static final INTERACTIVE_MODE_CARDBORAD_MOTION:I = 0x4

.field public static final INTERACTIVE_MODE_CARDBORAD_MOTION_WITH_TOUCH:I = 0x5

.field public static final INTERACTIVE_MODE_MOTION:I = 0x1

.field public static final INTERACTIVE_MODE_MOTION_WITH_TOUCH:I = 0x3

.field public static final INTERACTIVE_MODE_TOUCH:I = 0x2

.field public static final PROJECTION_MODE_DOME180:I = 0xca

.field public static final PROJECTION_MODE_DOME180_UPPER:I = 0xcc

.field public static final PROJECTION_MODE_DOME230:I = 0xcb

.field public static final PROJECTION_MODE_DOME230_UPPER:I = 0xcd

.field public static final PROJECTION_MODE_MULTI_FISH_EYE_HORIZONTAL:I = 0xd2

.field public static final PROJECTION_MODE_MULTI_FISH_EYE_VERTICAL:I = 0xd3

.field public static final PROJECTION_MODE_PLANE_CROP:I = 0xd0

.field public static final PROJECTION_MODE_PLANE_FIT:I = 0xcf

.field public static final PROJECTION_MODE_PLANE_FULL:I = 0xd1

.field public static final PROJECTION_MODE_SPHERE:I = 0xc9

.field public static final PROJECTION_MODE_STEREO_SPHERE:I = 0xce
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROJECTION_MODE_STEREO_SPHERE_HORIZONTAL:I = 0xd4

.field public static final PROJECTION_MODE_STEREO_SPHERE_VERTICAL:I = 0xd5

.field private static final TAG:Ljava/lang/String; = "MDVRLibrary"

.field public static final sMultiScreenSize:I = 0x2


# instance fields
.field private mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

.field private mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

.field private mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

.field private mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

.field private mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

.field private mPickerManager:Lcom/asha/vrlib/MDPickerManager;

.field private mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

.field private mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

.field private mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

.field private mTexture:Lcom/asha/vrlib/texture/MD360Texture;

.field private mTextureSize:Landroid/graphics/RectF;

.field private mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDVRLibrary$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTextureSize:Landroid/graphics/RectF;

    .line 100
    invoke-static {}, Lcom/asha/vrlib/common/MDMainHandler;->init()V

    .line 103
    new-instance v0, Lcom/asha/vrlib/common/MDGLHandler;

    invoke-direct {v0}, Lcom/asha/vrlib/common/MDGLHandler;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    .line 106
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary;->initModeManager(Lcom/asha/vrlib/MDVRLibrary$Builder;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary;->initPluginManager(Lcom/asha/vrlib/MDVRLibrary$Builder;)V

    .line 112
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$100(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDGLScreenWrapper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/asha/vrlib/MDVRLibrary;->initOpenGL(Landroid/content/Context;Lcom/asha/vrlib/MDGLScreenWrapper;)V

    .line 114
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$200(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/texture/MD360Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 116
    new-instance v0, Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MDTouchHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    .line 119
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary;->initTouchHelper(Lcom/asha/vrlib/MDVRLibrary$Builder;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary;->initPickerManager(Lcom/asha/vrlib/MDVRLibrary$Builder;)V

    .line 125
    invoke-direct {p0}, Lcom/asha/vrlib/MDVRLibrary;->initPlugin()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDVRLibrary$Builder;Lcom/asha/vrlib/MDVRLibrary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;
    .param p2, "x1"    # Lcom/asha/vrlib/MDVRLibrary$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary;-><init>(Lcom/asha/vrlib/MDVRLibrary$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/MDTouchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/asha/vrlib/MDVRLibrary;)V
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/asha/vrlib/MDVRLibrary;->fireDestroy()V

    return-void
.end method

.method static synthetic access$500(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/common/MDGLHandler;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    return-object v0
.end method

.method private fireDestroy()V
    .locals 4

    .prologue
    .line 452
    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v3}, Lcom/asha/vrlib/plugins/MDPluginManager;->getPlugins()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 453
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/asha/vrlib/plugins/MDAbsPlugin;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 455
    .local v2, "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    invoke-virtual {v2}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->destroyInGL()V

    goto :goto_0

    .line 458
    .end local v2    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    :cond_0
    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v3}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getMainPlugin()Lcom/asha/vrlib/plugins/MDAbsPlugin;

    move-result-object v1

    .line 459
    .local v1, "mainPlugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {v1}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->destroyInGL()V

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    if-eqz v3, :cond_2

    .line 464
    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v3}, Lcom/asha/vrlib/texture/MD360Texture;->destroy()V

    .line 465
    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v3}, Lcom/asha/vrlib/texture/MD360Texture;->release()V

    .line 466
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 468
    :cond_2
    return-void
.end method

.method private initModeManager(Lcom/asha/vrlib/MDVRLibrary$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 177
    new-instance v2, Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-direct {v2}, Lcom/asha/vrlib/MDDirectorCamUpdate;-><init>()V

    iput-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 180
    new-instance v2, Lcom/asha/vrlib/MDDirectorFilter;

    invoke-direct {v2}, Lcom/asha/vrlib/MDDirectorFilter;-><init>()V

    iput-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    .line 181
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1300(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/MDDirectorFilter;->setDelegate(Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;)V

    .line 184
    new-instance v1, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;

    invoke-direct {v1}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;-><init>()V

    .line 185
    .local v1, "projectionManagerParams":Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mTextureSize:Landroid/graphics/RectF;

    iput-object v2, v1, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->textureSize:Landroid/graphics/RectF;

    .line 186
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1400(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MD360DirectorFactory;

    move-result-object v2

    iput-object v2, v1, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    .line 187
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1500(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    move-result-object v2

    iput-object v2, v1, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->projectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    .line 188
    new-instance v2, Lcom/asha/vrlib/model/MDMainPluginBuilder;

    invoke-direct {v2}, Lcom/asha/vrlib/model/MDMainPluginBuilder;-><init>()V

    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 189
    invoke-virtual {v2, v3}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->setCameraUpdate(Lcom/asha/vrlib/MDDirectorCamUpdate;)Lcom/asha/vrlib/model/MDMainPluginBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    .line 190
    invoke-virtual {v2, v3}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->setFilter(Lcom/asha/vrlib/MDDirectorFilter;)Lcom/asha/vrlib/model/MDMainPluginBuilder;

    move-result-object v2

    .line 191
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1600(Lcom/asha/vrlib/MDVRLibrary$Builder;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->setContentType(I)Lcom/asha/vrlib/model/MDMainPluginBuilder;

    move-result-object v2

    .line 192
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$200(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/texture/MD360Texture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->setTexture(Lcom/asha/vrlib/texture/MD360Texture;)Lcom/asha/vrlib/model/MDMainPluginBuilder;

    move-result-object v2

    iput-object v2, v1, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->mainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .line 194
    new-instance v2, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1700(Lcom/asha/vrlib/MDVRLibrary$Builder;)I

    move-result v3

    iget-object v4, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    invoke-direct {v2, v3, v4, v1}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;)V

    iput-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 195
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1800(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->prepare(Landroid/content/Context;Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;)V

    .line 198
    new-instance v2, Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1900(Lcom/asha/vrlib/MDVRLibrary$Builder;)I

    move-result v3

    iget-object v4, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    invoke-direct {v2, v3, v4}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;)V

    iput-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 199
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->setBarrelDistortionConfig(Lcom/asha/vrlib/model/BarrelDistortionConfig;)V

    .line 200
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asha/vrlib/model/BarrelDistortionConfig;->isDefaultEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->setAntiDistortionEnabled(Z)V

    .line 201
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1800(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->prepare(Landroid/content/Context;Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;)V

    .line 204
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    invoke-direct {v0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;-><init>()V

    .line 205
    .local v0, "interactiveManagerParams":Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    iput-object v2, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 206
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2100(Lcom/asha/vrlib/MDVRLibrary$Builder;)I

    move-result v2

    iput v2, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mMotionDelay:I

    .line 207
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2200(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iput-object v2, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 208
    new-instance v2, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2300(Lcom/asha/vrlib/MDVRLibrary$Builder;)I

    move-result v3

    iget-object v4, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    invoke-direct {v2, v3, v4, v0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    iput-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    .line 209
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1800(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->prepare(Landroid/content/Context;Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;)V

    .line 210
    return-void
.end method

.method private initOpenGL(Landroid/content/Context;Lcom/asha/vrlib/MDGLScreenWrapper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenWrapper"    # Lcom/asha/vrlib/MDGLScreenWrapper;

    .prologue
    .line 231
    invoke-static {p1}, Lcom/asha/vrlib/common/GLUtil;->supportsEs2(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p2, p1}, Lcom/asha/vrlib/MDGLScreenWrapper;->init(Landroid/content/Context;)V

    .line 235
    invoke-static {p1}, Lcom/asha/vrlib/MD360Renderer;->with(Landroid/content/Context;)Lcom/asha/vrlib/MD360Renderer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    .line 236
    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MD360Renderer$Builder;->setGLHandler(Lcom/asha/vrlib/common/MDGLHandler;)Lcom/asha/vrlib/MD360Renderer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 237
    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MD360Renderer$Builder;->setPluginManager(Lcom/asha/vrlib/plugins/MDPluginManager;)Lcom/asha/vrlib/MD360Renderer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 238
    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MD360Renderer$Builder;->setProjectionModeManager(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/MD360Renderer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 239
    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MD360Renderer$Builder;->setDisplayModeManager(Lcom/asha/vrlib/strategy/display/DisplayModeManager;)Lcom/asha/vrlib/MD360Renderer$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/asha/vrlib/MD360Renderer$Builder;->build()Lcom/asha/vrlib/MD360Renderer;

    move-result-object v0

    .line 243
    .local v0, "renderer":Lcom/asha/vrlib/MD360Renderer;
    invoke-virtual {p2, v0}, Lcom/asha/vrlib/MDGLScreenWrapper;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 244
    iput-object p2, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    .line 249
    .end local v0    # "renderer":Lcom/asha/vrlib/MD360Renderer;
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    invoke-virtual {v1}, Lcom/asha/vrlib/MDGLScreenWrapper;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const-string v1, "OpenGLES2 not supported."

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initPickerManager(Lcom/asha/vrlib/MDVRLibrary$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 217
    invoke-static {}, Lcom/asha/vrlib/MDPickerManager;->with()Lcom/asha/vrlib/MDPickerManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 218
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager$Builder;->setPluginManager(Lcom/asha/vrlib/plugins/MDPluginManager;)Lcom/asha/vrlib/MDPickerManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 219
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager$Builder;->setDisplayModeManager(Lcom/asha/vrlib/strategy/display/DisplayModeManager;)Lcom/asha/vrlib/MDPickerManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 220
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager$Builder;->setProjectionModeManager(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/MDPickerManager$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/asha/vrlib/MDPickerManager$Builder;->build()Lcom/asha/vrlib/MDPickerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    .line 222
    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2400(Lcom/asha/vrlib/MDVRLibrary$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDVRLibrary;->setEyePickEnable(Z)V

    .line 223
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2500(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager;->setEyePickChangedListener(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;)V

    .line 224
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$2600(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager;->setTouchPickListener(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;)V

    .line 227
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v1}, Lcom/asha/vrlib/MDPickerManager;->getTouchPicker()Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDTouchHelper;->addClickListener(Lcom/asha/vrlib/MDVRLibrary$IGestureListener;)V

    .line 228
    return-void
.end method

.method private initPlugin()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectorUpdatePlugin()Lcom/asha/vrlib/plugins/MDAbsPlugin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDVRLibrary;->addPlugin(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V

    .line 253
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDPickerManager;->getEyePicker()Lcom/asha/vrlib/plugins/MDAbsPlugin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDVRLibrary;->addPlugin(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V

    .line 254
    return-void
.end method

.method private initPluginManager(Lcom/asha/vrlib/MDVRLibrary$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 213
    new-instance v0, Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-direct {v0}, Lcom/asha/vrlib/plugins/MDPluginManager;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 214
    return-void
.end method

.method private initTouchHelper(Lcom/asha/vrlib/MDVRLibrary$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 129
    new-instance v1, Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    .line 130
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$300(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;->addClickListener(Lcom/asha/vrlib/MDVRLibrary$IGestureListener;)V

    .line 131
    new-instance v0, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;-><init>(Lcom/asha/vrlib/MDVRLibrary;Lcom/asha/vrlib/MDVRLibrary$1;)V

    .line 132
    .local v0, "updatePinchRunnable":Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    new-instance v2, Lcom/asha/vrlib/MDVRLibrary$1;

    invoke-direct {v2, p0, v0}, Lcom/asha/vrlib/MDVRLibrary$1;-><init>(Lcom/asha/vrlib/MDVRLibrary;Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;)V

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;->setAdvanceGestureListener(Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;)V

    .line 144
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$700(Lcom/asha/vrlib/MDVRLibrary$Builder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;->setPinchEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$800(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/MDPinchConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;->setPinchConfig(Lcom/asha/vrlib/model/MDPinchConfig;)V

    .line 147
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$900(Lcom/asha/vrlib/MDVRLibrary$Builder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;->setFlingEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->access$1000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/MDFlingConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/MDTouchHelper;->setFlingConfig(Lcom/asha/vrlib/model/MDFlingConfig;)V

    .line 150
    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    invoke-virtual {v1}, Lcom/asha/vrlib/MDGLScreenWrapper;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/asha/vrlib/MDVRLibrary$2;

    invoke-direct {v2, p0}, Lcom/asha/vrlib/MDVRLibrary$2;-><init>(Lcom/asha/vrlib/MDVRLibrary;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    new-instance v0, Lcom/asha/vrlib/MDVRLibrary$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;-><init>(Landroid/content/Context;Lcom/asha/vrlib/MDVRLibrary$1;)V

    return-object v0
.end method


# virtual methods
.method public addPlugin(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/plugins/MDPluginManager;->add(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V

    .line 401
    return-void
.end method

.method public findHotspotByTag(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/plugins/MDPluginManager;->findHotspotByTag(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    move-result-object v0

    return-object v0
.end method

.method public findViewByTag(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/MDAbsView;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/plugins/MDPluginManager;->findViewByTag(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectorBrief()Lcom/asha/vrlib/model/MDDirectorBrief;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectorBrief()Lcom/asha/vrlib/model/MDDirectorBrief;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->getMode()I

    move-result v0

    return v0
.end method

.method public getInteractiveMode()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->getMode()I

    move-result v0

    return v0
.end method

.method public getProjectionMode()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getMode()I

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    const-string v0, "MDVRLibrary"

    const-string v1, "please remove the handleTouchEvent in context!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public isAntiDistortionEnabled()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->isAntiDistortionEnabled()Z

    move-result v0

    return v0
.end method

.method public isEyePickEnable()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDPickerManager;->isEyePickEnable()Z

    move-result v0

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDTouchHelper;->isFlingEnabled()Z

    move-result v0

    return v0
.end method

.method public isPinchEnabled()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDTouchHelper;->isPinchEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyPlayerChanged()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->notifyChanged()V

    .line 498
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    new-instance v1, Lcom/asha/vrlib/MDVRLibrary$4;

    invoke-direct {v1, p0}, Lcom/asha/vrlib/MDVRLibrary$4;-><init>(Lcom/asha/vrlib/MDVRLibrary;)V

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 448
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    invoke-virtual {v0}, Lcom/asha/vrlib/common/MDGLHandler;->markAsDestroy()V

    .line 449
    return-void
.end method

.method public onOrientationChanged(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->onOrientationChanged(Landroid/content/Context;)V

    .line 425
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->onPause(Landroid/content/Context;)V

    .line 436
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDGLScreenWrapper;->onPause()V

    .line 439
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->onResume(Landroid/content/Context;)V

    .line 429
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mScreenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDGLScreenWrapper;->onResume()V

    .line 432
    :cond_0
    return-void
.end method

.method public onTextureResize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTextureSize:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    return-void
.end method

.method public removePlugin(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/plugins/MDPluginManager;->remove(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V

    .line 405
    return-void
.end method

.method public removePlugins()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/plugins/MDPluginManager;->removeAll()V

    .line 409
    return-void
.end method

.method public resetEyePick()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDPickerManager;->resetEyePick()V

    .line 331
    return-void
.end method

.method public resetPinch()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDTouchHelper;->reset()V

    .line 327
    return-void
.end method

.method public resetTouch()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mGLHandler:Lcom/asha/vrlib/common/MDGLHandler;

    new-instance v1, Lcom/asha/vrlib/MDVRLibrary$3;

    invoke-direct {v1, p0}, Lcom/asha/vrlib/MDVRLibrary$3;-><init>(Lcom/asha/vrlib/MDVRLibrary;)V

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public setAntiDistortionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->setAntiDistortionEnabled(Z)V

    .line 335
    return-void
.end method

.method public setDirectorFilter(Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorFilter;->setDelegate(Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;)V

    .line 397
    return-void
.end method

.method public setEyePickChangedListener(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;)V
    .locals 1
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDPickerManager;->setEyePickChangedListener(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;)V

    .line 361
    return-void
.end method

.method public setEyePickChangedListener(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    new-instance v1, Lcom/asha/vrlib/compact/CompactEyePickAdapter;

    invoke-direct {v1, p1}, Lcom/asha/vrlib/compact/CompactEyePickAdapter;-><init>(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;)V

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager;->setEyePickChangedListener(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;)V

    .line 352
    return-void
.end method

.method public setEyePickEnable(Z)V
    .locals 1
    .param p1, "eyePickEnable"    # Z

    .prologue
    .line 346
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDPickerManager;->setEyePickEnable(Z)V

    .line 347
    return-void
.end method

.method public setFlingConfig(Lcom/asha/vrlib/model/MDFlingConfig;)V
    .locals 1
    .param p1, "flingConfig"    # Lcom/asha/vrlib/model/MDFlingConfig;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper;->setFlingConfig(Lcom/asha/vrlib/model/MDFlingConfig;)V

    .line 393
    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper;->setFlingEnabled(Z)V

    .line 389
    return-void
.end method

.method public setPinchConfig(Lcom/asha/vrlib/model/MDPinchConfig;)V
    .locals 1
    .param p1, "pinchConfig"    # Lcom/asha/vrlib/model/MDPinchConfig;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper;->setPinchConfig(Lcom/asha/vrlib/model/MDPinchConfig;)V

    .line 381
    return-void
.end method

.method public setPinchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 376
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper;->setPinchEnabled(Z)V

    .line 377
    return-void
.end method

.method public setPinchScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 368
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mTouchHelper:Lcom/asha/vrlib/MDTouchHelper;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper;->scaleTo(F)V

    .line 369
    return-void
.end method

.method public setTouchPickListener(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;)V
    .locals 1
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDPickerManager;->setTouchPickListener(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;)V

    .line 365
    return-void
.end method

.method public setTouchPickListener(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mPickerManager:Lcom/asha/vrlib/MDPickerManager;

    new-instance v1, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;

    invoke-direct {v1, p1}, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;-><init>(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)V

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDPickerManager;->setTouchPickListener(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;)V

    .line 357
    return-void
.end method

.method public switchDisplayMode(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->switchMode(Landroid/content/Context;)V

    .line 284
    return-void
.end method

.method public switchDisplayMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->switchMode(Landroid/content/Context;I)V

    .line 297
    return-void
.end method

.method public switchInteractiveMode(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->switchMode(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method public switchInteractiveMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mInteractiveModeManager:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->switchMode(Landroid/content/Context;I)V

    .line 280
    return-void
.end method

.method public switchProjectionMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->switchMode(Landroid/content/Context;I)V

    .line 311
    return-void
.end method

.method public updateCamera()Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    return-object v0
.end method
