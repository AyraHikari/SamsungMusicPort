.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4BytesProperty"
.end annotation


# instance fields
.field private mFixedValueSize:I

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mFixedValueSize:I

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    new-array p2, p3, [B

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getValue(I)[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method read(Ljava/io/RandomAccessFile;I)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->isImplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    .line 95
    array-length v0, v0

    .line 96
    new-array v0, v0, [B

    .line 98
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method setValueSize(II)V
    .locals 1

    .line 111
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mFixedValueSize:I

    if-gtz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->mValues:Ljava/util/List;

    new-array p1, p1, [B

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "can\'t change size of fixed sized property"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
