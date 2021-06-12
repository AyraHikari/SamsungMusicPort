.class public Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->a:Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->b:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    return-void
.end method

.method private a([B)I
    .locals 2

    const/4 v0, 0x0

    .line 146
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 147
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    array-length p1, p1

    return p1
.end method

.method private a(Ljava/lang/String;)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const/16 v0, 0x80

    .line 78
    new-array v0, v0, [B

    const-wide/16 v5, 0x80

    sub-long v5, v3, v5

    .line 84
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v7, 0x3

    .line 92
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 93
    invoke-static {v0, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v10, "544147"

    .line 95
    invoke-static {v8}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1e

    .line 99
    new-array v10, v8, [B

    .line 100
    new-array v11, v8, [B

    .line 101
    new-array v12, v8, [B

    const/4 v13, 0x4

    .line 102
    new-array v14, v13, [B

    .line 103
    new-array v8, v8, [B

    const/4 v15, 0x5

    .line 105
    new-array v2, v15, [I

    fill-array-data v2, :array_0

    .line 108
    new-array v15, v15, [[B

    aput-object v10, v15, v9

    const/4 v9, 0x1

    aput-object v11, v15, v9

    const/16 v16, 0x2

    aput-object v12, v15, v16

    aput-object v14, v15, v7

    aput-object v8, v15, v13

    const/4 v7, 0x0

    const/4 v13, 0x3

    .line 110
    :goto_0
    array-length v9, v2

    if-ge v7, v9, :cond_0

    .line 111
    aget-object v9, v15, v7

    move-object/from16 v17, v15

    aget v15, v2, v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v13, v9, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    aget v1, v2, v7

    add-int/2addr v13, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v17

    move-object/from16 v1, v18

    goto :goto_0

    :cond_0
    move-object/from16 v18, v1

    const/4 v1, 0x1

    .line 115
    new-array v2, v1, [B

    aget-byte v0, v0, v13

    const/4 v7, 0x0

    aput-byte v0, v2, v7

    const/16 v0, 0x1c

    .line 120
    aget-byte v0, v8, v0

    if-nez v0, :cond_1

    new-array v0, v1, [B

    const/16 v1, 0x1d

    aget-byte v1, v8, v1

    aput-byte v1, v0, v7

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v7, 0x0

    aput-byte v1, v0, v7

    :goto_1
    move-object v15, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v3, v0

    int-to-long v0, v13

    add-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    move-object v13, v14

    move-object v14, v8

    move-object/from16 v16, v2

    .line 127
    invoke-static/range {v10 .. v16}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->a([B[B[B[B[B[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 125
    :cond_2
    :try_start_2
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;

    const-string v1, "Wrong ID3v1 Tag file."

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v18, v1

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;

    const-string v1, "Wrong ID3v1 Tag file."

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v1

    :goto_2
    move-object v1, v0

    const/4 v2, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v18, v1

    :goto_3
    move-object v2, v0

    .line 76
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_4
    if-eqz v2, :cond_4

    .line 128
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    :goto_5
    throw v1

    :array_0
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x4
        0x1e
    .end array-data
.end method

.method private a(B)Ljava/lang/String;
    .locals 1

    and-int/lit16 p1, p1, 0xff

    if-ltz p1, :cond_0

    .line 156
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 157
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->b(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 29
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v1

    .line 36
    :pswitch_0
    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    array-length v3, v0

    const-string v4, "ISO-8859-1"

    invoke-direct {p1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    .line 34
    :pswitch_2
    aget-byte p1, v0, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->a(B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b(I)[B
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->b:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->a(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->a([B)I

    move-result v0

    .line 61
    array-length v1, p1

    if-ne v1, v0, :cond_1

    return-object p1

    .line 64
    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 65
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->b:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
