.class public Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;
.super Ljava/lang/Object;
.source "FFmpegMediaMetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwseemann/media/FFmpegMediaMetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Metadata"
.end annotation


# static fields
.field public static final BOOLEAN_VAL:I = 0x3

.field public static final BYTE_ARRAY_VAL:I = 0x7

.field public static final DATE_VAL:I = 0x6

.field public static final DOUBLE_VAL:I = 0x5

.field public static final INTEGER_VAL:I = 0x2

.field public static final LONG_VAL:I = 0x4

.field public static final STRING_VAL:I = 0x1


# instance fields
.field private mParcel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lwseemann/media/FFmpegMediaMetadataRetriever;


# direct methods
.method public constructor <init>(Lwseemann/media/FFmpegMediaMetadataRetriever;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->this$0:Lwseemann/media/FFmpegMediaMetadataRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMetadataId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 974
    const/4 v0, 0x1

    return v0
.end method

.method private checkType(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedType"    # I

    .prologue
    .line 981
    iget-object v1, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 983
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 985
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    :cond_0
    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 917
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 918
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 941
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 942
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 949
    const/4 v5, 0x6

    invoke-direct {p0, p1, v5}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 950
    iget-object v5, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 951
    .local v2, "timeSinceEpoch":J
    iget-object v5, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 953
    .local v1, "timeZone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 954
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 960
    :goto_0
    return-object v5

    .line 956
    :cond_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 957
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 959
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 960
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 933
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 934
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 909
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 910
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 925
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 926
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 901
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 902
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 3
    .param p1, "metadataId"    # Ljava/lang/String;

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->checkMetadataId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_0
    iget-object v0, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 869
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0

    .line 871
    :cond_0
    iput-object p1, p0, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    .line 872
    const/4 v0, 0x1

    goto :goto_0
.end method
