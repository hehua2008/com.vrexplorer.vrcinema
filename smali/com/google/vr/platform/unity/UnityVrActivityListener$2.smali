.class final Lcom/google/vr/platform/unity/UnityVrActivityListener$2;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/platform/unity/UnityVrActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresentationStarted(Landroid/view/Display;)V
    .locals 1
    .param p1, "presentationDisplay"    # Landroid/view/Display;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderJni;->setDisplayOverride(Landroid/view/Display;)V

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$100(Z)V

    .line 73
    return-void
.end method

.method public onPresentationStopped()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->setDisplayOverride(Landroid/view/Display;)V

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$100(Z)V

    .line 79
    return-void
.end method
