.class Lcom/asha/vrlib/MDPickerManager$EyePickPoster;
.super Ljava/lang/Object;
.source "MDPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyePickPoster"
.end annotation


# instance fields
.field private hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

.field final synthetic this$0:Lcom/asha/vrlib/MDPickerManager;

.field private timestamp:J


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDPickerManager;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager;Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager;
    .param p2, "x1"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;-><init>(Lcom/asha/vrlib/MDPickerManager;)V

    return-void
.end method


# virtual methods
.method fire(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;Lcom/asha/vrlib/model/MDRay;Lcom/asha/vrlib/model/MDHitPoint;)V
    .locals 4
    .param p1, "hit"    # Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .param p2, "ray"    # Lcom/asha/vrlib/model/MDRay;
    .param p3, "hitPoint"    # Lcom/asha/vrlib/model/MDHitPoint;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->setHit(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;)V

    .line 275
    invoke-static {}, Lcom/asha/vrlib/model/MDHitEvent;->obtain()Lcom/asha/vrlib/model/MDHitEvent;

    move-result-object v0

    .line 276
    .local v0, "event":Lcom/asha/vrlib/model/MDHitEvent;
    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDHitEvent;->setHotspot(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;)V

    .line 277
    invoke-virtual {v0, p2}, Lcom/asha/vrlib/model/MDHitEvent;->setRay(Lcom/asha/vrlib/model/MDRay;)V

    .line 278
    iget-wide v2, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/asha/vrlib/model/MDHitEvent;->setTimestamp(J)V

    .line 279
    invoke-virtual {v0, p3}, Lcom/asha/vrlib/model/MDHitEvent;->setHitPoint(Lcom/asha/vrlib/model/MDHitPoint;)V

    .line 281
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    invoke-interface {v1, v0}, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;->onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v1}, Lcom/asha/vrlib/MDPickerManager;->access$1700(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v1}, Lcom/asha/vrlib/MDPickerManager;->access$1700(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/asha/vrlib/MDVRLibrary$IEyePickListener2;->onHotspotHit(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 289
    :cond_1
    invoke-static {v0}, Lcom/asha/vrlib/model/MDHitEvent;->recycle(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 290
    return-void
.end method

.method setHit(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;)V
    .locals 4
    .param p1, "hit"    # Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    if-eq v0, p1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    iget-wide v2, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->timestamp:J

    invoke-interface {v0, v2, v3}, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;->onEyeHitOut(J)V

    .line 299
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->timestamp:J

    .line 302
    :cond_1
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$EyePickPoster;->hit:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .line 303
    return-void
.end method
