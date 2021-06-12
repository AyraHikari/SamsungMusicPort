.class public Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


# static fields
.field private static final BUF_SIZE:I = 0x1000


# instance fields
.field private mBufEnd:I

.field private mBufPos:I

.field private mBuffer:[B

.field private mRealPos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->invalidate()V

    const/16 p1, 0x1000

    .line 21
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBuffer:[B

    return-void
.end method

.method private fillBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBuffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x1000

    invoke-super {p0, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    .line 80
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mRealPos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mRealPos:J

    .line 81
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    goto :goto_0

    .line 83
    :cond_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    .line 85
    :goto_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    return v0
.end method

.method private invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    .line 91
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    .line 92
    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mRealPos:J

    return-void
.end method


# virtual methods
.method public getFilePointer()J
    .locals 4

    .line 63
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mRealPos:J

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->fillBuffer()I

    move-result v0

    if-gez v0, :cond_0

    return v2

    .line 31
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    if-nez v0, :cond_1

    return v2

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBuffer:[B

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBuffer:[B

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    return p3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 48
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return p3
.end method

.method public seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mRealPos:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    if-ltz v0, :cond_0

    .line 69
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    if-gt v0, v1, :cond_0

    .line 70
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufEnd:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->mBufPos:I

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;->invalidate()V

    :goto_0
    return-void
.end method
