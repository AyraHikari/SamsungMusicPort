.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ID3TagULT"
.end annotation


# static fields
.field static final TAG_LYRIC_CONTENTS_DESCRIPTO_NONUNICODE:I = 0x1

.field static final TAG_LYRIC_CONTENTS_DESCRIPTO_UNICODE:I = 0x2

.field static final TAG_LYRIC_ENCODING:I = 0x1

.field static final TAG_LYRIC_LANGUAGE:I = 0x3

.field static final ULT:Ljava/lang/String; = "ULT"


# instance fields
.field final encoding:[B

.field final language:[B

.field final nonUnicodDescripto:[B

.field unicodDescripto:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->encoding:[B

    const/4 v1, 0x3

    .line 57
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->language:[B

    const/4 v1, 0x2

    .line 59
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->unicodDescripto:[B

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->nonUnicodDescripto:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$1;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;-><init>()V

    return-void
.end method
