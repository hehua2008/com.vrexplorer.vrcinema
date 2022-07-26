.class Lcom/mcxiaoke/packer/support/walle/V2Const;
.super Ljava/lang/Object;
.source "V2Const.java"


# static fields
.field public static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field public static final APK_SIGNING_BLOCK_MAGIC:[B

.field public static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field public static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field public static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field public static final CONTENT_DIGESTED_CHUNK_MAX_SIZE_BYTES:I = 0x100000

.field public static final UINT16_MAX_VALUE:I = 0xffff

.field public static final ZIP64_EOCD_LOCATOR_SIG:I = 0x7064b50

.field public static final ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field public static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field public static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field public static final ZIP_EOCD_CENTRAL_DIR_TOTAL_RECORD_COUNT_OFFSET:I = 0xa

.field public static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field public static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field public static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mcxiaoke/packer/support/walle/V2Const;->APK_SIGNING_BLOCK_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x50t
        0x4bt
        0x20t
        0x53t
        0x69t
        0x67t
        0x20t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x20t
        0x34t
        0x32t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
