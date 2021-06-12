.class public Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\(?([\\d]+)\\)?\\u0000?"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c:Ljava/util/List;

    const-string v0, "UTF-8"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 77
    array-length v0, p3

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v1, v0, 0xa

    .line 79
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    sget-object v2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->a:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    .line 83
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    sget-object v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->b:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 90
    array-length p2, p3

    add-int/lit8 p2, p2, 0x1

    .line 91
    invoke-static {p2, v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object p2

    .line 90
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    sget-object p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->a:[B

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x3

    .line 94
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string p3, "rw"

    invoke-direct {p2, p1, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 p3, 0x0

    .line 98
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {p2, p1, v2, v3, v0}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;J[B)V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p3, p1

    .line 97
    :try_start_1
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p3, :cond_0

    .line 101
    :try_start_2
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw p1
.end method

.method private a(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xa

    .line 292
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 293
    iget-byte v0, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b:B

    const/16 v1, 0x40

    and-int/2addr v0, v1

    const/16 v2, 0xa

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 295
    new-array p2, v3, [B

    .line 296
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 297
    invoke-static {p2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b([B)I

    move-result p1

    add-int/2addr p1, v2

    return p1

    .line 298
    :cond_0
    iget-object p2, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    aget-byte p2, p2, v1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 299
    new-array p2, v3, [B

    .line 300
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 301
    invoke-static {p2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->c([B)I

    move-result p1

    add-int/2addr p1, v2

    add-int/2addr p1, v3

    return p1

    :cond_1
    return v2
.end method

.method private a([B)I
    .locals 10

    .line 541
    invoke-static {p1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "45515541"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "49504c53"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "52564144"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "544f5259"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "54594552"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "5453495a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "54524441"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "5452434b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "54504f53"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "54504532"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "54504531"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_b
    const-string v0, "54494d45"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_c
    const-string v0, "54495432"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_d
    const-string v0, "54445243"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_1

    :sswitch_e
    const-string v0, "54444154"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_f
    const-string v0, "54434f4e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_10
    const-string v0, "54414c42"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v9

    :pswitch_0
    const p1, 0x186a9

    return p1

    :pswitch_1
    const p1, 0x186a8

    return p1

    :pswitch_2
    const p1, 0x186a7

    return p1

    :pswitch_3
    const p1, 0x186a6

    return p1

    :pswitch_4
    const p1, 0x186a5

    return p1

    :pswitch_5
    const p1, 0x186a4

    return p1

    :pswitch_6
    const p1, 0x186a3

    return p1

    :pswitch_7
    const p1, 0x186a2

    return p1

    :pswitch_8
    const p1, 0x186a1

    return p1

    :pswitch_9
    return v1

    :pswitch_a
    return v2

    :pswitch_b
    return v3

    :pswitch_c
    return v4

    :pswitch_d
    return v5

    :pswitch_e
    return v6

    :pswitch_f
    return v7

    :pswitch_10
    return v8

    :sswitch_data_0
    .sparse-switch
        -0x64160f37 -> :sswitch_10
        -0x63f9d4bf -> :sswitch_f
        -0x63ec8445 -> :sswitch_e
        -0x63ec0c45 -> :sswitch_d
        -0x63a58f5e -> :sswitch_c
        -0x63a54f6b -> :sswitch_b
        -0x626ffae7 -> :sswitch_a
        -0x626ffae6 -> :sswitch_9
        -0x626f42b6 -> :sswitch_8
        -0x6253d317 -> :sswitch_7
        -0x6253cf87 -> :sswitch_6
        -0x6245a4f2 -> :sswitch_5
        -0x61f1271f -> :sswitch_4
        -0x612b74ee -> :sswitch_3
        0x34180cbb -> :sswitch_2
        0x3e2ead6d -> :sswitch_1
        0x6aa39f7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 261
    new-array v0, v0, [B

    .line 263
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v1, 0x3

    .line 265
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 266
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string v4, "494433"

    .line 270
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 275
    new-array v4, v2, [B

    .line 276
    invoke-static {v0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x5

    .line 279
    aget-byte v5, v4, v3

    if-eq v5, v2, :cond_0

    .line 283
    aget-byte p1, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    .line 286
    new-array v5, v2, [B

    .line 287
    invoke-static {v0, v1, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    invoke-static {v5}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b([B)I

    move-result v0

    invoke-static {v4, p1, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a([BBI)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object p1

    return-object p1

    .line 280
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    new-instance p1, Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;

    const-string v0, "Sorry. v2.2 is not supported."

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 272
    new-instance p1, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong ID3v2 file. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a()Ljava/util/Map;

    move-result-object v1

    .line 685
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 686
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 687
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->f(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 692
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x3

    const/4 v3, 0x0

    .line 676
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 677
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 678
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 675
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_0

    .line 679
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw p1

    :array_0
    .array-data 1
        0x4t
        0x0t
    .end array-data
.end method

.method private a(I[BLcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 419
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v2, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v9, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(I[B)[B

    move-result-object v11

    .line 422
    array-length v12, v11

    .line 433
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d(I)[B

    move-result-object v13

    .line 435
    iget-object v2, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-object v2, v2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 436
    invoke-static {v12, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v2

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {v12, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b(II)[B

    move-result-object v2

    .line 440
    :goto_0
    iget-object v14, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->c:[B

    const/4 v4, 0x1

    .line 446
    aget-byte v5, v14, v4

    and-int/lit8 v5, v5, -0x2

    int-to-byte v5, v5

    aput-byte v5, v14, v4

    add-int/lit8 v4, v12, 0xa

    .line 451
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 452
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 453
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v6

    .line 458
    iget v2, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    if-ne v2, v12, :cond_1

    .line 460
    invoke-virtual {v9, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 461
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    move-object/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v18, v13

    move-wide v12, v6

    goto :goto_1

    .line 464
    :cond_1
    iget v2, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    sub-int v15, v12, v2

    .line 465
    iget-object v2, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v2, v2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    add-int v8, v2, v15

    .line 467
    invoke-static {v8, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v2

    move-object/from16 v16, v11

    const-wide/16 v10, 0x6

    .line 470
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 471
    invoke-virtual {v9, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 474
    iget-object v3, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    const-wide/16 v10, 0xa

    add-long/2addr v10, v6

    iget v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    move/from16 v17, v12

    move-object/from16 v18, v13

    int-to-long v12, v0

    add-long/2addr v10, v12

    .line 475
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object v2, v9

    move-wide v4, v6

    move-wide v12, v6

    move-wide v6, v10

    move v10, v8

    move-object v8, v0

    .line 474
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;JJ[B)V

    .line 478
    invoke-direct {v1, v12, v13, v15, v10}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(JII)V

    :goto_1
    move-object/from16 v2, v18

    move/from16 v3, v17

    move-object v4, v14

    move-object/from16 v5, v16

    move-wide v6, v12

    .line 481
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a([BI[B[BJ)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v0

    .line 482
    iget-object v2, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move/from16 v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 419
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_2
    if-eqz v10, :cond_2

    .line 483
    :try_start_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :goto_3
    throw v2
.end method

.method private a(JI)V
    .locals 6

    .line 619
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 620
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 621
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(JII)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(JI)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-static {v0, p4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    .line 613
    iget-object p4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b()B

    move-result p4

    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(B)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 614
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(JI)V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const/16 v2, 0xa

    .line 310
    new-array v2, v2, [B

    const/4 v3, 0x4

    .line 311
    new-array v4, v3, [B

    int-to-long v5, p3

    .line 318
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    int-to-long v5, p3

    cmp-long v5, v5, v0

    if-gez v5, :cond_7

    .line 319
    iget v5, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    if-ge p3, v5, :cond_7

    .line 320
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    add-int/2addr p3, v5

    .line 323
    new-array v5, v3, [B

    const/4 v6, 0x2

    .line 324
    new-array v7, v6, [B

    const/4 v8, 0x0

    .line 326
    invoke-static {v2, v8, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    sget-object v9, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Padding;->a:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_2

    .line 338
    :cond_0
    invoke-static {v2, v3, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v9, 0x8

    .line 341
    invoke-static {v2, v9, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget-object v6, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    aget-byte v6, v6, v8

    if-ne v6, v3, :cond_1

    .line 349
    invoke-static {v4}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b([B)I

    move-result v6

    goto :goto_1

    .line 351
    :cond_1
    invoke-static {v4}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->c([B)I

    move-result v6

    :goto_1
    if-gtz v6, :cond_2

    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a([B)I

    move-result v8

    .line 362
    iget-object v9, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b()B

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(B)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v8, :cond_4

    if-eqz v9, :cond_3

    .line 366
    invoke-static {v5, v6, v7, v10}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v5

    add-int/lit8 v7, p3, -0xa

    int-to-long v7, v7

    .line 367
    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a(J)V

    .line 368
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_3
    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v5

    add-int/2addr p3, v5

    goto :goto_0

    .line 371
    :cond_4
    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->f(I)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v9, :cond_5

    .line 374
    invoke-static {v5, v6, v7, v10}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v5

    add-int/lit8 v7, p3, -0xa

    int-to-long v9, v7

    .line 375
    invoke-virtual {v5, v9, v10}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a(J)V

    .line 376
    invoke-virtual {p2, v8, v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V

    .line 378
    :cond_5
    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v5

    add-int/2addr p3, v5

    goto :goto_0

    .line 380
    :cond_6
    new-array v9, v6, [B

    .line 381
    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10

    .line 382
    invoke-static {v5, v6, v7, v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v5

    add-int/lit8 v6, p3, -0xa

    int-to-long v6, v6

    .line 383
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a(J)V

    .line 384
    invoke-virtual {p2, v8, v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V

    add-int/2addr p3, v10

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 237
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 238
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v1

    .line 241
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header parsing time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;)I

    move-result v3

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, v1

    .line 248
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended header parsing time : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 252
    iget-object v4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {p0, v0, v4, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v1

    .line 255
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frames parsing time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_0

    .line 257
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 657
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 662
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    .line 663
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 666
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->a:[Ljava/lang/String;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    return-object v1
.end method

.method private b(B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 700
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 702
    iget v3, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    .line 703
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v3

    .line 702
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0

    .line 705
    :cond_0
    iget v3, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b(II)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 697
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    .line 708
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_2
    throw p1
.end method

.method private b(I[B)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 487
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 489
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(I[B)[B

    move-result-object v7

    .line 490
    array-length v5, v7

    .line 501
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d(I)[B

    move-result-object v4

    .line 503
    iget-object v0, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    const/4 v6, 0x0

    aget-byte v0, v0, v6

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    .line 504
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->b(II)[B

    move-result-object v0

    :goto_0
    const/4 v8, 0x2

    .line 508
    new-array v8, v8, [B

    fill-array-data v8, :array_0

    .line 511
    iget-object v9, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {v1, v2, v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;)I

    move-result v9

    int-to-long v9, v9

    add-int/lit8 v11, v5, 0xa

    .line 513
    iget-object v12, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v12, v12, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    add-int/2addr v12, v11

    .line 515
    invoke-static {v12, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v6

    .line 518
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 519
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 520
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-wide/16 v14, 0x6

    .line 525
    invoke-virtual {v2, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 526
    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 529
    iget-object v0, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v2, v0, v9, v10, v6}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;J[B)V

    .line 532
    invoke-direct {v1, v9, v10, v11, v12}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(JII)V

    move-object v6, v8

    move-wide v8, v9

    .line 535
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a([BI[B[BJ)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v0

    .line 536
    iget-object v4, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move/from16 v5, p1

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 487
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_1

    .line 537
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :goto_2
    throw v3

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private c(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 399
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v3

    .line 400
    iget v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    add-int/lit8 v0, v0, 0xa

    .line 402
    iget-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v5, v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    sub-int/2addr v5, v0

    const/4 v6, 0x4

    .line 404
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(II)[B

    move-result-object v5

    const-wide/16 v6, 0x6

    .line 407
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 411
    iget-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b:Ljava/lang/String;

    invoke-static {v1, v5, v3, v4, v0}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;JI)V

    neg-int v5, v0

    .line 413
    iget-object v6, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v6, v6, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    sub-int/2addr v6, v0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(JII)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 398
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    .line 415
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw p1
.end method

.method private c(B)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(I[B)[B
    .locals 1

    .line 627
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 628
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 633
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 634
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 637
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 646
    :goto_0
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 647
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private d(I)[B
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported meta type. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->j:[B

    return-object p1

    .line 602
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->i:[B

    return-object p1

    .line 600
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->g:[B

    return-object p1

    .line 598
    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->f:[B

    return-object p1

    .line 596
    :pswitch_4
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->e:[B

    return-object p1

    .line 594
    :pswitch_5
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->d:[B

    return-object p1

    .line 592
    :pswitch_6
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->c:[B

    return-object p1

    .line 590
    :pswitch_7
    sget-object p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->b:[B

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private f(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 125
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    if-eqz v2, :cond_5

    .line 126
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 132
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const-string v0, "UTF-8"

    goto :goto_0

    :pswitch_1
    const-string v0, "UTF-16BE"

    goto :goto_0

    :pswitch_2
    const-string v0, "UTF-16"

    goto :goto_0

    :pswitch_3
    const-string v0, "ISO-8859-1"

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v3, :cond_4

    .line 149
    new-instance p1, Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v4

    invoke-direct {p1, v2, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object p1

    .line 157
    :cond_4
    new-instance p1, Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v4

    invoke-direct {p1, v2, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_5
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ISO-8859-1"

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 199
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(I[B)V

    return-void
.end method

.method public a(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 206
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(B)V

    .line 207
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b(B)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a()V

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const v0, 0x186a9

    .line 217
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(I)V

    :cond_1
    if-eqz p2, :cond_4

    .line 220
    array-length v0, p2

    if-nez v0, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 227
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->a(I[BLcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->b(I[B)V

    goto :goto_1

    .line 222
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->c(I)V

    :goto_1
    return-void
.end method

.method public b(I)[B
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 170
    :cond_0
    iget v1, p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->e:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 175
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    array-length v3, v3

    if-gtz v3, :cond_2

    return-object v0

    .line 178
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    iget-object v3, p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    iget-object p1, p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    array-length p1, p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, v3, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->d:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a()Ljava/util/Map;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "size : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", offset : "

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->d:[B

    invoke-static {v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
