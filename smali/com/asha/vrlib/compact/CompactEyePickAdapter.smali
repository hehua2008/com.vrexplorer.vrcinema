.class public Lcom/asha/vrlib/compact/CompactEyePickAdapter;
.super Ljava/lang/Object;
.source "CompactEyePickAdapter.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;


# instance fields
.field private final listener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/asha/vrlib/compact/CompactEyePickAdapter;->listener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onHotspotHit(Lcom/asha/vrlib/model/MDHitEvent;)V
    .locals 4
    .param p1, "hitEvent"    # Lcom/asha/vrlib/model/MDHitEvent;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asha/vrlib/compact/CompactEyePickAdapter;->listener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/compact/CompactEyePickAdapter;->listener:Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDHitEvent;->getHotspot()Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDHitEvent;->getTimestamp()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/asha/vrlib/MDVRLibrary$IEyePickListener;->onHotspotHit(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;J)V

    .line 24
    :cond_0
    return-void
.end method
