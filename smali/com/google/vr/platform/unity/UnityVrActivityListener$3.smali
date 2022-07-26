.class Lcom/google/vr/platform/unity/UnityVrActivityListener$3;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/platform/unity/UnityVrActivityListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;


# direct methods
.method constructor <init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/platform/unity/UnityVrActivityListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-static {v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$300(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Lcom/google/unity/GoogleUnityActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/unity/GoogleUnityActivity;->getGvrLayout()Lcom/google/vr/ndk/base/GvrLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-static {v1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$200(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Lcom/google/vr/cardboard/UiLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method
