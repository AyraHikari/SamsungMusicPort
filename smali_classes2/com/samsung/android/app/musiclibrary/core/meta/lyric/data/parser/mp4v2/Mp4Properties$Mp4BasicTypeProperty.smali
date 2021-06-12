.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4BasicTypeProperty"
.end annotation


# static fields
.field private static final UNDEFINED:I = 0xff


# instance fields
.field private mBasicType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xff

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    const/16 p1, 0xff

    .line 122
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    .line 130
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    return v0
.end method

.method read(Ljava/io/RandomAccessFile;I)V
    .locals 0

    .line 136
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0xff

    .line 139
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    :goto_0
    return-void
.end method
