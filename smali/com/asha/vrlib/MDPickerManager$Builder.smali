.class public Lcom/asha/vrlib/MDPickerManager$Builder;
.super Ljava/lang/Object;
.source "MDPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private displayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

.field private pluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

.field private projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/asha/vrlib/MDPickerManager$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/asha/vrlib/MDPickerManager$Builder;)Lcom/asha/vrlib/strategy/display/DisplayModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager$Builder;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$Builder;->displayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/asha/vrlib/MDPickerManager$Builder;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager$Builder;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$Builder;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/asha/vrlib/MDPickerManager$Builder;)Lcom/asha/vrlib/plugins/MDPluginManager;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDPickerManager$Builder;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$Builder;->pluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/asha/vrlib/MDPickerManager;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/asha/vrlib/MDPickerManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDPickerManager;-><init>(Lcom/asha/vrlib/MDPickerManager$Builder;Lcom/asha/vrlib/MDPickerManager$1;)V

    return-object v0
.end method

.method public setDisplayModeManager(Lcom/asha/vrlib/strategy/display/DisplayModeManager;)Lcom/asha/vrlib/MDPickerManager$Builder;
    .locals 0
    .param p1, "displayModeManager"    # Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$Builder;->displayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 230
    return-object p0
.end method

.method public setPluginManager(Lcom/asha/vrlib/plugins/MDPluginManager;)Lcom/asha/vrlib/MDPickerManager$Builder;
    .locals 0
    .param p1, "pluginManager"    # Lcom/asha/vrlib/plugins/MDPluginManager;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$Builder;->pluginManager:Lcom/asha/vrlib/plugins/MDPluginManager;

    .line 225
    return-object p0
.end method

.method public setProjectionModeManager(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/MDPickerManager$Builder;
    .locals 0
    .param p1, "projectionModeManager"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$Builder;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 235
    return-object p0
.end method
