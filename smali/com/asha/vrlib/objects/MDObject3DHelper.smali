.class public Lcom/asha/vrlib/objects/MDObject3DHelper;
.super Ljava/lang/Object;
.source "MDObject3DHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;)V

    .line 17
    return-void
.end method

.method public static loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object3D"    # Lcom/asha/vrlib/objects/MDAbsObject3D;
    .param p2, "loadComplete"    # Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asha/vrlib/objects/MDObject3DHelper$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/asha/vrlib/objects/MDObject3DHelper$1;-><init>(Lcom/asha/vrlib/objects/MDAbsObject3D;Landroid/content/Context;Lcom/asha/vrlib/objects/MDObject3DHelper$LoadComplete;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28
    return-void
.end method
