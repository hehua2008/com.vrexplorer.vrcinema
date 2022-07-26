.class final Lcom/google/vr/cardboard/AndroidNCompat$2;
.super Ljava/lang/Object;
.source "AndroidNCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/AndroidNCompat;->handleVrCoreAbsence(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/vr/cardboard/AndroidNCompat$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/vr/cardboard/AndroidNCompat$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.VR_LISTENER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method
