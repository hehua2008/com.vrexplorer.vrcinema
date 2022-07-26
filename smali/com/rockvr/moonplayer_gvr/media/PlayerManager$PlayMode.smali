.class final enum Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;
.super Ljava/lang/Enum;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

.field public static final enum MODE_2D:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

.field public static final enum MODE_360:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;


# instance fields
.field mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    const-string v1, "MODE_360"

    invoke-direct {v0, v1, v3, v2}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_360:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    .line 10
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    const-string v1, "MODE_2D"

    invoke-direct {v0, v1, v2, v4}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_2D:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    .line 8
    new-array v0, v4, [Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_360:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_2D:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->mMode:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->mMode:I

    return v0
.end method
