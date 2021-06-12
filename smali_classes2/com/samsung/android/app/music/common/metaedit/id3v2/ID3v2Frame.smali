.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field final b:I

.field final c:[B

.field final d:[B

.field final e:I

.field private f:J


# direct methods
.method private constructor <init>([BI[B[B)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a:[B

    .line 31
    iput p2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    .line 32
    iput-object p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->c:[B

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    const/4 p1, 0x1

    .line 38
    aget-byte p2, p3, p1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-ne p2, p1, :cond_1

    const/4 p1, 0x4

    .line 39
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 40
    array-length v0, p4

    if-lt v0, p1, :cond_0

    .line 41
    invoke-virtual {p2, p4, p3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b([B)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->e:I

    goto :goto_0

    .line 44
    :cond_0
    iput p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->e:I

    goto :goto_0

    .line 47
    :cond_1
    iput p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->e:I

    :goto_0
    return-void
.end method

.method public static a([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .locals 1

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;-><init>([BI[B[B)V

    return-object v0
.end method

.method public static a([BI[B[BJ)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .locals 1

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;-><init>([BI[B[B)V

    .line 65
    invoke-virtual {v0, p4, p5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a(J)V

    return-object v0
.end method


# virtual methods
.method a()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->f:J

    return-wide v0
.end method

.method a(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->f:J

    return-void
.end method
