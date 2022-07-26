.class Lcom/google/vr/ndk/base/GvrLayout$1;
.super Ljava/lang/Object;
.source "GvrLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayout;
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
    .line 127
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout$1;->this$0:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$1;->this$0:Lcom/google/vr/ndk/base/GvrLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout;->access$000(Lcom/google/vr/ndk/base/GvrLayout;I)V

    .line 131
    return-void
.end method
