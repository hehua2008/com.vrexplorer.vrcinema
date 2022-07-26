.class final Lcom/asha/vrlib/objects/MDObject3DHelper$1;
.super Ljava/lang/Object;
.source "MDObject3DHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$loadComplete:Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;

.field final synthetic val$object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/objects/MDAbsObject3D;Landroid/content/Context;Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    iput-object p2, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$loadComplete:Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    iget-object v1, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->executeLoad(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$loadComplete:Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$loadComplete:Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;

    iget-object v1, p0, Lcom/asha/vrlib/objects/MDObject3DHelper$1;->val$object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    invoke-interface {v0, v1}, Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;->onComplete(Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 26
    :cond_0
    return-void
.end method
