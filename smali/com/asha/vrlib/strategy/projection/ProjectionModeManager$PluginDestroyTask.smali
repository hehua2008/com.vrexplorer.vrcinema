.class Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;
.super Ljava/lang/Object;
.source "ProjectionModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginDestroyTask"
.end annotation


# instance fields
.field private plugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V
    .locals 0
    .param p1, "plugin"    # Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;->plugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "must call in gl thread"

    invoke-static {v0}, Lcom/asha/vrlib/common/VRUtil;->checkGLThread(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;->plugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    invoke-virtual {v0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->destroyInGL()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$PluginDestroyTask;->plugin:Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 182
    return-void
.end method
