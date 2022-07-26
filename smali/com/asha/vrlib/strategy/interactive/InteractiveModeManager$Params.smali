.class public Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;
.super Ljava/lang/Object;
.source "InteractiveModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field public glHandler:Lcom/asha/vrlib/common/MDGLHandler;

.field public mMotionDelay:I

.field public mSensorListener:Landroid/hardware/SensorEventListener;

.field public projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
