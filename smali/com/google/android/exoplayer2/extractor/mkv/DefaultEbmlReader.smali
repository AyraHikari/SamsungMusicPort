.class final Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

.field private d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 49
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a:[B

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/Stack;

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->c:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 204
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c([BII)V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->a(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a:[B

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->a([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 162
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 167
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 227
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 p1, p2, -0x1

    .line 230
    aget-byte p1, v0, p1

    if-nez p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->c:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->a()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->a(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 76
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->b(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->c(I)V

    return v2

    .line 80
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->c:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v3

    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return v1

    :cond_3
    long-to-int v0, v3

    .line 89
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    .line 90
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    .line 93
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    if-ne v0, v2, :cond_5

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->c:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    const/4 v0, 0x2

    .line 95
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->a(I)I

    move-result v0

    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :pswitch_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_6

    goto :goto_2

    .line 117
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid float size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->a(ID)V

    .line 120
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    return v2

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v4, v4

    invoke-interface {v0, v3, v4, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->a(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 131
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    return v2

    .line 123
    :pswitch_2
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->a(ILjava/lang/String;)V

    .line 127
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    return v2

    .line 124
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String element size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :pswitch_3
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_9

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->a(IJ)V

    .line 112
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    return v2

    .line 109
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :pswitch_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v5

    .line 102
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    add-long/2addr v3, v5

    .line 103
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->d:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->a(IJJ)V

    .line 105
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    return v2

    .line 134
    :pswitch_5
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 135
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
