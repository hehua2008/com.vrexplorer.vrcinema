.class final enum Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;
.super Ljava/lang/Enum;
.source "MDAbsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/plugins/hotspot/MDAbsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

.field public static final enum DOWN:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

.field public static final enum NOP:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    const-string v1, "NOP"

    invoke-direct {v0, v1, v2}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->NOP:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    new-instance v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->DOWN:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    sget-object v1, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->NOP:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->DOWN:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->$VALUES:[Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    return-object v0
.end method

.method public static values()[Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->$VALUES:[Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    invoke-virtual {v0}, [Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    return-object v0
.end method
