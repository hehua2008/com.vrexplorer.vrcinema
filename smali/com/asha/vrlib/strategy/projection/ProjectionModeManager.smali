.class public Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
.super Lcom/asha/vrlib/strategy/ModeManager;
.source "ProjectionModeManager.java"

# interfaces
.implements Lcom/asha/vrlib/strategy/projection/IProjectionMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;,
        Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/asha/vrlib/strategy/ModeManager",
        "<",
        "Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;",
        ">;",
        "Lcom/asha/vrlib/strategy/projection/IProjectionMode;"
    }
.end annotation


# static fields
.field public static sModes:[I


# instance fields
.field private mCustomDirectorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

.field private final mDirectorBrief:Lcom/asha/vrlib/model/MDDirectorBrief;

.field private final mDirectorUpdatePlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

.field private final mDirectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/MD360Director;",
            ">;"
        }
    .end annotation
.end field

.field private mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

.field private mMainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

.field private mProjectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

.field private mTextureSize:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->sModes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xc9
        0xca
        0xcb
    .end array-data
.end method

.method public constructor <init>(ILcom/asha/vrlib/common/MDGLHandler;Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "handler"    # Lcom/asha/vrlib/common/MDGLHandler;
    .param p3, "projectionManagerParams"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/strategy/ModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;)V

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectors:Ljava/util/List;

    .line 58
    iget-object v0, p3, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->textureSize:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mTextureSize:Landroid/graphics/RectF;

    .line 59
    iget-object v0, p3, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mCustomDirectorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    .line 60
    iget-object v0, p3, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->projectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mProjectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    .line 61
    iget-object v0, p3, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;->mainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .line 62
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

    invoke-virtual {v0, p0}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->setProjectionModeManager(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .line 63
    new-instance v0, Lcom/asha/vrlib/model/MDDirectorBrief;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDDirectorBrief;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectorBrief:Lcom/asha/vrlib/model/MDDirectorBrief;

    .line 64
    new-instance v0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;-><init>(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectorUpdatePlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/model/MDDirectorBrief;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectorBrief:Lcom/asha/vrlib/model/MDDirectorBrief;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createStrategy(I)Lcom/asha/vrlib/strategy/IModeStrategy;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->createStrategy(I)Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;

    move-result-object v0

    return-object v0
.end method

.method protected createStrategy(I)Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x43660000    # 230.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 108
    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mProjectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mProjectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

    invoke-interface {v1, p1}, Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;->createStrategy(I)Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;

    move-result-object v0

    .line 110
    .local v0, "strategy":Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
    if-eqz v0, :cond_0

    .line 137
    .end local v0    # "strategy":Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
    :goto_0
    return-object v0

    .line 113
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 137
    new-instance v0, Lcom/asha/vrlib/strategy/projection/SphereProjection;

    invoke-direct {v0}, Lcom/asha/vrlib/strategy/projection/SphereProjection;-><init>()V

    goto :goto_0

    .line 115
    :pswitch_0
    new-instance v0, Lcom/asha/vrlib/strategy/projection/DomeProjection;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mTextureSize:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v3, v5}, Lcom/asha/vrlib/strategy/projection/DomeProjection;-><init>(Landroid/graphics/RectF;FZ)V

    goto :goto_0

    .line 117
    :pswitch_1
    new-instance v0, Lcom/asha/vrlib/strategy/projection/DomeProjection;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mTextureSize:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v4, v5}, Lcom/asha/vrlib/strategy/projection/DomeProjection;-><init>(Landroid/graphics/RectF;FZ)V

    goto :goto_0

    .line 119
    :pswitch_2
    new-instance v0, Lcom/asha/vrlib/strategy/projection/DomeProjection;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mTextureSize:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v3, v6}, Lcom/asha/vrlib/strategy/projection/DomeProjection;-><init>(Landroid/graphics/RectF;FZ)V

    goto :goto_0

    .line 121
    :pswitch_3
    new-instance v0, Lcom/asha/vrlib/strategy/projection/DomeProjection;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mTextureSize:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v4, v6}, Lcom/asha/vrlib/strategy/projection/DomeProjection;-><init>(Landroid/graphics/RectF;FZ)V

    goto :goto_0

    .line 123
    :pswitch_4
    new-instance v0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;

    sget-object v1, Lcom/asha/vrlib/common/MDDirection;->HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;-><init>(Lcom/asha/vrlib/common/MDDirection;)V

    goto :goto_0

    .line 126
    :pswitch_5
    new-instance v0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;

    sget-object v1, Lcom/asha/vrlib/common/MDDirection;->VERTICAL:Lcom/asha/vrlib/common/MDDirection;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;-><init>(Lcom/asha/vrlib/common/MDDirection;)V

    goto :goto_0

    .line 130
    :pswitch_6
    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mTextureSize:Landroid/graphics/RectF;

    invoke-static {p1, v1}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->create(ILandroid/graphics/RectF;)Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_7
    new-instance v0, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;

    sget-object v1, Lcom/asha/vrlib/common/MDDirection;->HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

    invoke-direct {v0, v2, v1}, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;-><init>(FLcom/asha/vrlib/common/MDDirection;)V

    goto :goto_0

    .line 134
    :pswitch_8
    new-instance v0, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;

    sget-object v1, Lcom/asha/vrlib/common/MDDirection;->VERTICAL:Lcom/asha/vrlib/common/MDDirection;

    invoke-direct {v0, v2, v1}, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;-><init>(FLcom/asha/vrlib/common/MDDirection;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDirectorBrief()Lcom/asha/vrlib/model/MDDirectorBrief;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectorBrief:Lcom/asha/vrlib/model/MDDirectorBrief;

    return-object v0
.end method

.method public getDirectorUpdatePlugin()Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectorUpdatePlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    return-object v0
.end method

.method public getDirectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/MD360Director;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectors:Ljava/util/List;

    return-object v0
.end method

.method public getMainPlugin()Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;->buildMainPlugin(Lcom/asha/vrlib/model/MDMainPluginBuilder;)Lcom/asha/vrlib/plugins/MDAbsPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    return-object v0
.end method

.method public getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    return-object v0
.end method

.method protected getModes()[I
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->sModes:[I

    return-object v0
.end method

.method public getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;->getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;

    move-result-object v0

    return-object v0
.end method

.method public on(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/asha/vrlib/strategy/ModeManager;->on(Landroid/content/Context;)V

    .line 91
    iget-object v2, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getGLHandler()Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v2

    new-instance v3, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;

    iget-object v4, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    invoke-direct {v3, v4}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;-><init>(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mMainPlugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 98
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getStrategy()Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v2

    check-cast v2, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;

    invoke-virtual {v2}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;->hijackDirectorFactory()Lcom/asha/vrlib/MD360DirectorFactory;

    move-result-object v0

    .line 99
    .local v0, "factory":Lcom/asha/vrlib/MD360DirectorFactory;
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mCustomDirectorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

    .line 101
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->mDirectors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MD360DirectorFactory;->createDirector(I)Lcom/asha/vrlib/MD360Director;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method public switchMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/asha/vrlib/strategy/ModeManager;->switchMode(Landroid/content/Context;I)V

    .line 84
    return-void
.end method
