.class Lcom/google/vr/internal/controller/ServiceBridge$2;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/internal/controller/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/internal/controller/ServiceBridge;


# direct methods
.method constructor <init>(Lcom/google/vr/internal/controller/ServiceBridge;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/vr/internal/controller/ServiceBridge$2;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge$2;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->access$100(Lcom/google/vr/internal/controller/ServiceBridge;)V

    .line 164
    return-void
.end method
