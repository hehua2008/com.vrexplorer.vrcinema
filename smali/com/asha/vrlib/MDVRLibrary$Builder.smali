.class public Lcom/asha/vrlib/MDVRLibrary$Builder;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

.field private contentType:I

.field private context:Landroid/content/Context;

.field private directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

.field private directorFilter:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

.field private displayMode:I

.field private eyePickChangedListener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

.field private eyePickEnabled:Z

.field private flingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

.field private flingEnabled:Z

.field private gestureListener:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

.field private interactiveMode:I

.field private motionDelay:I

.field private notSupportCallback:Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

.field private pinchConfig:Lcom/asha/vrlib/model/MDPinchConfig;

.field private pinchEnabled:Z

.field private projectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

.field private projectionMode:I

.field private screenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

.field private sensorListener:Landroid/hardware/SensorEventListener;

.field private texture:Lcom/asha/vrlib/texture/MD360Texture;

.field private touchPickChangedListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/16 v0, 0x65

    iput v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->displayMode:I

    .line 586
    iput v1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->interactiveMode:I

    .line 587
    const/16 v0, 0xc9

    iput v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->projectionMode:I

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->contentType:I

    .line 594
    iput-boolean v1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->eyePickEnabled:Z

    .line 599
    iput v1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->motionDelay:I

    .line 605
    iput-boolean v1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingEnabled:Z

    .line 609
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->context:Landroid/content/Context;

    .line 610
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/asha/vrlib/MDVRLibrary$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/asha/vrlib/MDVRLibrary$1;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDGLScreenWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->screenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/MDFlingConfig;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->directorFilter:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MD360DirectorFactory;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->projectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/asha/vrlib/MDVRLibrary$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->contentType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/asha/vrlib/MDVRLibrary$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->projectionMode:I

    return v0
.end method

.method static synthetic access$1800(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->notSupportCallback:Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/asha/vrlib/MDVRLibrary$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->displayMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/texture/MD360Texture;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/asha/vrlib/MDVRLibrary$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->motionDelay:I

    return v0
.end method

.method static synthetic access$2200(Lcom/asha/vrlib/MDVRLibrary$Builder;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->sensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/asha/vrlib/MDVRLibrary$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->interactiveMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/asha/vrlib/MDVRLibrary$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->eyePickEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->eyePickChangedListener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->touchPickChangedListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/MDVRLibrary$IGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->gestureListener:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asha/vrlib/MDVRLibrary$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->pinchEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/asha/vrlib/MDVRLibrary$Builder;)Lcom/asha/vrlib/model/MDPinchConfig;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->pinchConfig:Lcom/asha/vrlib/model/MDPinchConfig;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asha/vrlib/MDVRLibrary$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDVRLibrary$Builder;

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingEnabled:Z

    return v0
.end method

.method private build(Lcom/asha/vrlib/MDGLScreenWrapper;)Lcom/asha/vrlib/MDVRLibrary;
    .locals 2
    .param p1, "screenWrapper"    # Lcom/asha/vrlib/MDGLScreenWrapper;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    const-string v1, "You must call video/bitmap function before build"

    invoke-static {v0, v1}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/asha/vrlib/MD360DirectorFactory$DefaultImpl;

    invoke-direct {v0}, Lcom/asha/vrlib/MD360DirectorFactory$DefaultImpl;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    if-nez v0, :cond_1

    new-instance v0, Lcom/asha/vrlib/model/BarrelDistortionConfig;

    invoke-direct {v0}, Lcom/asha/vrlib/model/BarrelDistortionConfig;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->pinchConfig:Lcom/asha/vrlib/model/MDPinchConfig;

    if-nez v0, :cond_2

    new-instance v0, Lcom/asha/vrlib/model/MDPinchConfig;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDPinchConfig;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->pinchConfig:Lcom/asha/vrlib/model/MDPinchConfig;

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    if-nez v0, :cond_3

    new-instance v0, Lcom/asha/vrlib/model/MDFlingConfig;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDFlingConfig;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    .line 803
    :cond_3
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->screenWrapper:Lcom/asha/vrlib/MDGLScreenWrapper;

    .line 804
    new-instance v0, Lcom/asha/vrlib/MDVRLibrary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDVRLibrary;-><init>(Lcom/asha/vrlib/MDVRLibrary$Builder;Lcom/asha/vrlib/MDVRLibrary$1;)V

    return-object v0
.end method


# virtual methods
.method public asBitmap(Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 1
    .param p1, "bitmapProvider"    # Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;

    .prologue
    .line 639
    const-string v0, "bitmap Provider can\'t be null!"

    invoke-static {p1, v0}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    new-instance v0, Lcom/asha/vrlib/texture/MD360BitmapTexture;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/texture/MD360BitmapTexture;-><init>(Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 641
    const/4 v0, 0x1

    iput v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->contentType:I

    .line 642
    return-object p0
.end method

.method public asVideo(Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 1
    .param p1, "callback"    # Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;

    .prologue
    .line 633
    new-instance v0, Lcom/asha/vrlib/texture/MD360VideoTexture;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/texture/MD360VideoTexture;-><init>(Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->contentType:I

    .line 635
    return-object p0
.end method

.method public barrelDistortionConfig(Lcom/asha/vrlib/model/BarrelDistortionConfig;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "config"    # Lcom/asha/vrlib/model/BarrelDistortionConfig;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->barrelDistortionConfig:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    .line 750
    return-object p0
.end method

.method public build(Landroid/opengl/GLSurfaceView;)Lcom/asha/vrlib/MDVRLibrary;
    .locals 1
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 790
    invoke-static {p1}, Lcom/asha/vrlib/MDGLScreenWrapper;->wrap(Landroid/opengl/GLSurfaceView;)Lcom/asha/vrlib/MDGLScreenWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asha/vrlib/MDVRLibrary$Builder;->build(Lcom/asha/vrlib/MDGLScreenWrapper;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    return-object v0
.end method

.method public build(Landroid/view/View;)Lcom/asha/vrlib/MDVRLibrary;
    .locals 2
    .param p1, "glView"    # Landroid/view/View;

    .prologue
    .line 780
    instance-of v0, p1, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 781
    check-cast p1, Landroid/opengl/GLSurfaceView;

    .end local p1    # "glView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->build(Landroid/opengl/GLSurfaceView;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 782
    .restart local p1    # "glView":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/muzei/render/GLTextureView;

    if-eqz v0, :cond_1

    .line 783
    check-cast p1, Lcom/google/android/apps/muzei/render/GLTextureView;

    .end local p1    # "glView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->build(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    goto :goto_0

    .line 785
    .restart local p1    # "glView":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please ensure the glViewId is instance of GLSurfaceView or GLTextureView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/asha/vrlib/MDVRLibrary;
    .locals 1
    .param p1, "glTextureView"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 794
    invoke-static {p1}, Lcom/asha/vrlib/MDGLScreenWrapper;->wrap(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/asha/vrlib/MDGLScreenWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asha/vrlib/MDVRLibrary$Builder;->build(Lcom/asha/vrlib/MDGLScreenWrapper;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    return-object v0
.end method

.method public directorFactory(Lcom/asha/vrlib/MD360DirectorFactory;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "directorFactory"    # Lcom/asha/vrlib/MD360DirectorFactory;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    .line 740
    return-object p0
.end method

.method public directorFilter(Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "filter"    # Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->directorFilter:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    .line 760
    return-object p0
.end method

.method public displayMode(I)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "displayMode"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->displayMode:I

    .line 614
    return-object p0
.end method

.method public eyePickEnabled(Z)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->eyePickEnabled:Z

    .line 678
    return-object p0
.end method

.method public flingConfig(Lcom/asha/vrlib/model/MDFlingConfig;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "config"    # Lcom/asha/vrlib/model/MDFlingConfig;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    .line 770
    return-object p0
.end method

.method public flingEnabled(Z)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->flingEnabled:Z

    .line 765
    return-object p0
.end method

.method public gesture(Lcom/asha/vrlib/MDVRLibrary$IGestureListener;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->gestureListener:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    .line 656
    return-object p0
.end method

.method public ifNotSupport(Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->notSupportCallback:Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    .line 629
    return-object p0
.end method

.method public interactiveMode(I)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "interactiveMode"    # I

    .prologue
    .line 618
    iput p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->interactiveMode:I

    .line 619
    return-object p0
.end method

.method public listenEyePick(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    new-instance v0, Lcom/asha/vrlib/compact/CompactEyePickAdapter;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/compact/CompactEyePickAdapter;-><init>(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->eyePickChangedListener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    .line 702
    return-object p0
.end method

.method public listenGesture(Lcom/asha/vrlib/MDVRLibrary$IGestureListener;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->gestureListener:Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    .line 690
    return-object p0
.end method

.method public listenTouchPick(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 713
    new-instance v0, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;-><init>(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->touchPickChangedListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    .line 714
    return-object p0
.end method

.method public motionDelay(I)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "motionDelay"    # I

    .prologue
    .line 729
    iput p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->motionDelay:I

    .line 730
    return-object p0
.end method

.method public pinchConfig(Lcom/asha/vrlib/model/MDPinchConfig;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "config"    # Lcom/asha/vrlib/model/MDPinchConfig;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->pinchConfig:Lcom/asha/vrlib/model/MDPinchConfig;

    .line 755
    return-object p0
.end method

.method public pinchEnabled(Z)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->pinchEnabled:Z

    .line 667
    return-object p0
.end method

.method public projectionFactory(Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "projectionFactory"    # Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->projectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    .line 745
    return-object p0
.end method

.method public projectionMode(I)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "projectionMode"    # I

    .prologue
    .line 623
    iput p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->projectionMode:I

    .line 624
    return-object p0
.end method

.method public sensorCallback(Landroid/hardware/SensorEventListener;)Lcom/asha/vrlib/MDVRLibrary$Builder;
    .locals 0
    .param p1, "callback"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$Builder;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 735
    return-object p0
.end method
