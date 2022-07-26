.class Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;
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
    name = "RayPickAsTouchMainTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDPickerManager;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDPickerManager;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager;
    .param p2, "x1"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;-><init>(Lcom/asha/vrlib/MDPickerManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 250
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v0}, Lcom/asha/vrlib/MDPickerManager;->access$600(Lcom/asha/vrlib/MDPickerManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    iget v2, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->x:F

    iget v3, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->y:F

    iget-object v4, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v4}, Lcom/asha/vrlib/MDPickerManager;->access$800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$DirectorContext;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/asha/vrlib/MDPickerManager;->access$1500(Lcom/asha/vrlib/MDPickerManager;FFLcom/asha/vrlib/MDPickerManager$DirectorContext;)V

    .line 252
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEvent(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 244
    iput p1, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->x:F

    .line 245
    iput p2, p0, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->y:F

    .line 246
    return-void
.end method
