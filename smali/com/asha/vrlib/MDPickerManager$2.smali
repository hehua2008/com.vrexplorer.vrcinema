.class Lcom/asha/vrlib/MDPickerManager$2;
.super Lcom/asha/vrlib/plugins/MDPluginAdapter;
.source "MDPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pickTs:J

.field final synthetic this$0:Lcom/asha/vrlib/MDPickerManager;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDPickerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$2;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDPluginAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRenderer(II)V
    .locals 6
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 76
    iget-object v2, p0, Lcom/asha/vrlib/MDPickerManager$2;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v2}, Lcom/asha/vrlib/MDPickerManager;->access$600(Lcom/asha/vrlib/MDPickerManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/asha/vrlib/MDPickerManager$2;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v2}, Lcom/asha/vrlib/MDPickerManager;->access$800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    move-result-object v2

    iget-object v4, p0, Lcom/asha/vrlib/MDPickerManager$2;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v4}, Lcom/asha/vrlib/MDPickerManager;->access$700(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectors()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->snapshot(Ljava/util/List;)V

    .line 78
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v2, p0, Lcom/asha/vrlib/MDPickerManager$2;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDPickerManager;->isEyePickEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "current":J
    iget-wide v2, p0, Lcom/asha/vrlib/MDPickerManager$2;->pickTs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 83
    invoke-static {}, Lcom/asha/vrlib/common/MDMainHandler;->sharedHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/asha/vrlib/MDPickerManager$2;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v3}, Lcom/asha/vrlib/MDPickerManager;->access$900(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    iput-wide v0, p0, Lcom/asha/vrlib/MDPickerManager$2;->pickTs:J

    .line 87
    .end local v0    # "current":J
    :cond_0
    return-void

    .line 78
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
