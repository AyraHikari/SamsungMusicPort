.class public final Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/google/android/exoplayer2/Format;

.field private final c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RCC\u0001"

    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->b:Lcom/google/android/exoplayer2/Format;

    .line 61
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a()V

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a([BIIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p1

    sget v0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->a:I

    if-ne p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->f:I

    return v1

    .line 124
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input not RawCC"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a()V

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v3, 0x5

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-wide/16 v5, 0x2d

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->g:J

    goto :goto_0

    .line 143
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->f:I

    if-ne v0, v1, :cond_3

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/16 v3, 0x9

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->g:J

    .line 152
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->h:I

    .line 153
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->i:I

    return v1

    .line 149
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 158
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->h:I

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a()V

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->i:I

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->h:I

    goto :goto_0

    .line 166
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->i:I

    if-lez p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->g:J

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 84
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 101
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 102
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    return v1

    .line 93
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 94
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    goto :goto_0

    .line 96
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    return v0

    .line 86
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 87
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    goto :goto_0

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->e:I

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 68
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 69
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a()V

    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->b:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a()V

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c([BII)V

    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p1

    sget v0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->a:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method
