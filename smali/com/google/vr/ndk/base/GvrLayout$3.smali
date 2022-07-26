.class Lcom/google/vr/ndk/base/GvrLayout$3;
.super Ljava/lang/Object;
.source "GvrLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/GvrLayout;->createVrCoreSdkClient(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/FadeOverlayView;)Lcom/google/vr/ndk/base/VrCoreSdkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/GvrLayout;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrLayout;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout$3;->this$0:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$3;->this$0:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayout;->access$200(Lcom/google/vr/ndk/base/GvrLayout;)Lcom/google/vr/ndk/base/GvrUiLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayout;->invokeCloseButtonListener()V

    .line 856
    return-void
.end method
