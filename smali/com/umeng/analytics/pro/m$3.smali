.class Lcom/umeng/analytics/pro/m$3;
.super Lcom/umeng/analytics/pro/f;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/pro/m;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/m;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/m;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/umeng/analytics/pro/m$3;->a:Lcom/umeng/analytics/pro/m;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 448
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/umeng/analytics/pro/m$3;->a:Lcom/umeng/analytics/pro/m;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->j(Lcom/umeng/analytics/pro/m;)Lcom/umeng/analytics/pro/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/p;->b()V

    .line 451
    :cond_0
    return-void
.end method
