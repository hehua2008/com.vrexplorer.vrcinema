.class public Lcom/asha/vrlib/plugins/MDHotspotPlugin;
.super Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;
.source "MDHotspotPlugin.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDHotspotBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDHotspotBuilder;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;-><init>(Lcom/asha/vrlib/model/MDHotspotBuilder;)V

    .line 19
    return-void
.end method
