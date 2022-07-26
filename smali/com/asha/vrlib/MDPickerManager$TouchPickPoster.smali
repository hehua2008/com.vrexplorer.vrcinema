.class Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;
.super Ljava/lang/Object;
.source "MDPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPickPoster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDPickerManager;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDPickerManager;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager;
    .param p2, "x1"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;-><init>(Lcom/asha/vrlib/MDPickerManager;)V

    return-void
.end method


# virtual methods
.method fire(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDHitPoint;)V
    .locals 4
    .param p1, "hitHotspot"    # Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .param p2, "ray"    # Lcom/asha/vrlib/model/MDRay;
    .param p3, "hitPoint"    # Lcom/asha/vrlib/model/MDHitPoint;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v1}, Lcom/asha/vrlib/MDPickerManager;->access$1800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    invoke-static {}, Lcom/asha/vrlib/model/MDHitEvent;->obtain()Lcom/asha/vrlib/model/MDHitEvent;

    move-result-object v0

    .line 312
    .local v0, "event":Lcom/asha/vrlib/model/MDHitEvent;
    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDHitEvent;->setHotspot(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;)V

    .line 313
    invoke-virtual {v0, p2}, Lcom/asha/vrlib/model/MDHitEvent;->setRay(Lcom/asha/vrlib/model/MDRay;)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/asha/vrlib/model/MDHitEvent;->setTimestamp(J)V

    .line 315
    invoke-virtual {v0, p3}, Lcom/asha/vrlib/model/MDHitEvent;->setHitPoint(Lcom/asha/vrlib/model/MDHitPoint;)V

    .line 316
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$TouchPickPoster;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v1}, Lcom/asha/vrlib/MDPickerManager;->access$1800(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener2;->onHotspotHit(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 317
    invoke-static {v0}, Lcom/asha/vrlib/model/MDHitEvent;->recycle(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 319
    .end local v0    # "event":Lcom/asha/vrlib/model/MDHitEvent;
    :cond_0
    return-void
.end method
