.class Lorg/greenrobot/greendao/rx/RxDao$8;
.super Ljava/lang/Object;
.source "RxDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/greenrobot/greendao/rx/RxDao;

.field final synthetic val$entities:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/greenrobot/greendao/rx/RxDao;

    .prologue
    .line 172
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$8;, "Lorg/greenrobot/greendao/rx/RxDao$8;"
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao$8;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxDao$8;->val$entities:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$8;, "Lorg/greenrobot/greendao/rx/RxDao$8;"
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$8;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxDao;->access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxDao$8;->val$entities:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 176
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$8;->val$entities:Ljava/lang/Iterable;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$8;, "Lorg/greenrobot/greendao/rx/RxDao$8;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxDao$8;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
