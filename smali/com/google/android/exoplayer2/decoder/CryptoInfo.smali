.class public final Lcom/google/android/exoplayer2/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Landroid/media/MediaCodec$CryptoInfo;

.field private final j:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->b()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 66
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/decoder/CryptoInfo$1;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->j:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    return-void
.end method

.method private b()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 103
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->f:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->d:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->e:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->b:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->a:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->c:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 116
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->j:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->g:I

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->h:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->a(Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public a(I[I[I[B[BIII)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->f:I

    .line 75
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->d:[I

    .line 76
    iput-object p3, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->e:[I

    .line 77
    iput-object p4, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->b:[B

    .line 78
    iput-object p5, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->a:[B

    .line 79
    iput p6, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->c:I

    .line 80
    iput p7, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->g:I

    .line 81
    iput p8, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->h:I

    .line 82
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->c()V

    :cond_0
    return-void
.end method
