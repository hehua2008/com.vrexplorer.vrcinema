.class Lorg/greenrobot/greendao/rx/RxDao$22;
.super Ljava/lang/Object;
.source "RxDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxDao;->deleteByKeyInTx([Ljava/lang/Object;)Lrx/Observable;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/greenrobot/greendao/rx/RxDao;

.field final synthetic val$keys:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/greenrobot/greendao/rx/RxDao;

    .prologue
    .line 376
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$22;, "Lorg/greenrobot/greendao/rx/RxDao$22;"
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao$22;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxDao$22;->val$keys:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$22;, "Lorg/greenrobot/greendao/rx/RxDao$22;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxDao$22;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$22;, "Lorg/greenrobot/greendao/rx/RxDao$22;"
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$22;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxDao;->access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxDao$22;->val$keys:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx([Ljava/lang/Object;)V

    .line 380
    const/4 v0, 0x0

    return-object v0
.end method
