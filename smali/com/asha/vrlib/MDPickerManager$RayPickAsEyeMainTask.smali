.class Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;
.super Ljava/lang/Object;
.source "MDPickerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RayPickAsEyeMainTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDPickerManager;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDPickerManager;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager;
    .param p2, "x1"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;-><init>(Lcom/asha/vrlib/MDPickerManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v0}, Lcom/asha/vrlib/MDPickerManager;->access$600(Lcom/asha/vrlib/MDPickerManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    iget-object v2, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsEyeMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v2}, Lcom/asha/vrlib/MDPickerManager;->access$800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/asha/vrlib/MDPickerManager;->access$1600(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$DirectorContext;)V

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method