.class public Lcom/asha/vrlib/strategy/projection/ProjectionModeManager$Params;
.super Ljava/lang/Object;
.source "ProjectionModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field public directorFactory:Lcom/asha/vrlib/MD360DirectorFactory;

.field public mainPluginBuilder:Lcom/asha/vrlib/model/MDMainPluginBuilder;

.field public projectionFactory:Lcom/asha/vrlib/strategy/projection/IMDProjectionFactory;

.field public textureSize:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
