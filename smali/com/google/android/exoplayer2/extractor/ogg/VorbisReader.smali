.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private e:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static a(BII)I
    .locals 0

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static a(BLcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I
    .locals 2

    .line 164
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a(BII)I

    move-result p0

    .line 166
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->d:[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;->a:Z

    if-nez p0, :cond_0

    .line 167
    iget-object p0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->g:I

    goto :goto_0

    .line 169
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->h:I

    :goto_0
    return p0
.end method

.method static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 6

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 1

    const/4 v0, 0x1

    .line 40
    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->a(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->e:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->b:I

    .line 55
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->c:Z

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 95
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 99
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->j:[B

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->c:[B

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const-string v1, "audio/vorbis"

    const/4 v2, 0x0

    .line 103
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->e:I

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v5, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->b:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v8, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->c:J

    long-to-int v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->a:Lcom/google/android/exoplayer2/Format;

    return p2
.end method

.method protected b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 5

    .line 68
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a(BLcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 76
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->c:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->b:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_1
    int-to-long v3, v1

    .line 79
    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    .line 82
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->c:Z

    .line 83
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->b:I

    return-wide v3
.end method

.method c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    return-object v1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->e:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v0, :cond_1

    .line 119
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->e:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    return-object v1

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v0

    new-array v4, v0, [B

    .line 126
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->b:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object v5

    .line 130
    array-length p1, v5

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->a(I)I

    move-result v6

    .line 132
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->e:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;[B[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;I)V

    return-object p1
.end method

.method protected c(J)V
    .locals 3

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->c(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->c:Z

    .line 62
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->g:I

    :cond_1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->b:I

    return-void
.end method
