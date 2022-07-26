.class public Lcom/asha/vrlib/MD360Renderer$Builder;
.super Ljava/lang/Object;
.source "MD360Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MD360Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private displayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

.field private glHandler:Lcom/asha/vrlib/common/MDGLHandler;

.field private pluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

.field private projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MD360Renderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MD360Renderer$1;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Renderer$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/MD360Renderer$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/asha/vrlib/MD360Renderer$Builder;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/strategy/display/DisplayModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->displayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/plugins/MDPluginManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->pluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asha/vrlib/MD360Renderer$Builder;)Lcom/asha/vrlib/common/MDGLHandler;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Renderer$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->glHandler:Lcom/asha/vrlib/common/MDGLHandler;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/asha/vrlib/MD360Renderer;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/asha/vrlib/MD360Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MD360Renderer;-><init>(Lcom/asha/vrlib/MD360Renderer$Builder;Lcom/asha/vrlib/MD360Renderer$1;)V

    return-object v0
.end method

.method public setDisplayModeManager(Lcom/asha/vrlib/strategy/display/DisplayModeManager;)Lcom/asha/vrlib/MD360Renderer$Builder;
    .locals 0
    .param p1, "displayModeManager"    # Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->displayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 165
    return-object p0
.end method

.method public setGLHandler(Lcom/asha/vrlib/common/MDGLHandler;)Lcom/asha/vrlib/MD360Renderer$Builder;
    .locals 0
    .param p1, "glHandler"    # Lcom/asha/vrlib/common/MDGLHandler;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->glHandler:Lcom/asha/vrlib/common/MDGLHandler;

    .line 155
    return-object p0
.end method

.method public setPluginManager(Lcom/asha/vrlib/plugins/MDPluginManager;)Lcom/asha/vrlib/MD360Renderer$Builder;
    .locals 0
    .param p1, "pluginManager"    # Lcom/asha/vrlib/plugins/MDPluginManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->pluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 160
    return-object p0
.end method

.method public setProjectionModeManager(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/MD360Renderer$Builder;
    .locals 0
    .param p1, "projectionModeManager"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/asha/vrlib/MD360Renderer$Builder;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 170
    return-object p0
.end method
