.class public Lcom/asha/vrlib/compact/CompactTouchPickAdapter;
.super Ljava/lang/Object;
.source "CompactTouchPickAdapter.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;


# instance fields
.field private final listener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;->listener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onHotspotHit(Lcom/asha/vrlib/model/MDHitEvent;)V
    .locals 3
    .param p1, "hitEvent"    # Lcom/asha/vrlib/model/MDHitEvent;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;->listener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/asha/vrlib/compact/CompactTouchPickAdapter;->listener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDHitEvent;->getHotspot()Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDHitEvent;->getRay()Lcom/asha/vrlib/model/MDRay;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;->onHotspotHit(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;Lcom/asha/vrlib/model/MDRay;)V

    .line 25
    :cond_0
    return-void
.end method
