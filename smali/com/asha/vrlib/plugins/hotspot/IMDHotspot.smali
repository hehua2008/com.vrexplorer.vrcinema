.class public interface abstract Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
.super Ljava/lang/Object;
.source "IMDHotspot.java"


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hit(Lcom/asha/vrlib/model/MDRay;)Lcom/asha/vrlib/model/MDHitPoint;
.end method

.method public abstract onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V
.end method

.method public abstract onEyeHitOut(J)V
.end method

.method public abstract onTouchHit(Lcom/asha/vrlib/model/MDRay;)V
.end method

.method public abstract rotateToCamera()V
.end method
