.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    }
.end annotation


# static fields
.field private static final META_ITEM_LIST_PATH:Ljava/lang/String;

.field private static final MP4V_FORMAT:Ljava/lang/String; = ".m4a"

.field private static final TAG:Ljava/lang/String; = "Mp4V2Parser"


# instance fields
.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "moov"

    const-string v1, "udta"

    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ilst"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->META_ITEM_LIST_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    return-void
.end method

.method private convertToItmfItem(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    .locals 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 128
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->META_ITEM_LIST_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->findAtom(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object p1

    if-nez p1, :cond_0

    .line 130
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No found atom : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->META_ITEM_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->access$000()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->childSize()I

    move-result v0

    .line 134
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 136
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getChildAtom(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v3

    .line 137
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;-><init>(Ljava/lang/String;)V

    .line 138
    aput-object v4, v0, v2

    .line 140
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->childSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 143
    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getChildAtom(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v7

    const-string v8, "data"

    .line 144
    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 147
    :cond_1
    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;

    .line 148
    iget-object v8, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->typeSetIdentifier:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 149
    iget-object v9, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->typeCode:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->getValue()I

    move-result v9

    int-to-byte v9, v9

    .line 150
    iget-object v10, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->locale:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    .line 151
    iget-object v7, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->metadata:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->getValue(I)[B

    move-result-object v7

    .line 153
    iget-object v11, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;

    invoke-direct {v12, v8, v9, v10, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;-><init>(BBI[B)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private fetchString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 160
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 161
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;

    if-eqz p1, :cond_2

    .line 166
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->value:[B

    if-nez v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance p2, Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->value:[B

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    :goto_1
    return-object p2
.end method


# virtual methods
.method protected canParse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected close()V
    .locals 1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->close()V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0

    :catch_0
    return v0
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->create(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->setStart(J)V

    .line 64
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->setEnd(J)V

    .line 65
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->setSize(J)V

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->read()V

    .line 69
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->convertToItmfItem(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    move-result-object v0

    .line 70
    array-length v1, v0

    if-nez v1, :cond_0

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    .line 74
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 76
    iget-object v5, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->code:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "\ufffdlyr"

    .line 78
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->fetchString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    .line 82
    :cond_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
