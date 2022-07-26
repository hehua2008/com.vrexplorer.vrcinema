.class Lcom/google/vr/platform/unity/UnityVrActivityListener$4;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/platform/unity/UnityVrActivityListener;->finishActivityAndReturn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

.field final synthetic val$backTo2D:Z


# direct methods
.method constructor <init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$4;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    iput-boolean p2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$4;->val$backTo2D:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$4;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-static {v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$300(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Lcom/google/unity/GoogleUnityActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$4;->val$backTo2D:Z

    invoke-virtual {v0, v1}, Lcom/google/unity/GoogleUnityActivity;->finishActivityAndReturn(Z)V

    .line 154
    return-void
.end method
