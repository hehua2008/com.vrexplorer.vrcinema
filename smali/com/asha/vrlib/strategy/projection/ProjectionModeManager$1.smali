.class Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;
.super Lcom/asha/vrlib/plugins/MDPluginAdapter;
.source "ProjectionModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;-><init>(ILcom/asha/vrlib/common/MDGLHandler;Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;->this$0:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDPluginAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRenderer(II)V
    .locals 3
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;->this$0:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->access$000(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;->this$0:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->access$100(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/model/MDDirectorBrief;

    move-result-object v1

    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$1;->this$0:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->access$000(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->getViewQuaternion()Lcom/asha/vrlib/model/MDQuaternion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/asha/vrlib/model/MDDirectorBrief;->make(Lcom/asha/vrlib/model/MDQuaternion;)V

    .line 70
    :cond_0
    return-void
.end method
