.class public Lcom/google/vr/vrcore/controller/api/ControllerInitResults;
.super Ljava/lang/Object;
.source "ControllerInitResults.java"


# static fields
.field public static final FAILED_CLIENT_OBSOLETE:I = 0x3

.field public static final FAILED_NOT_AUTHORIZED:I = 0x2

.field public static final FAILED_UNSUPPORTED:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 34
    const/16 v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[UNKNOWN CONTROLLER INIT RESULT: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 28
    :pswitch_1
    const-string v0, "FAILED_UNSUPPORTED"

    goto :goto_0

    .line 30
    :pswitch_2
    const-string v0, "FAILED_NOT_AUTHORIZED"

    goto :goto_0

    .line 32
    :pswitch_3
    const-string v0, "FAILED_CLIENT_OBSOLETE"

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
