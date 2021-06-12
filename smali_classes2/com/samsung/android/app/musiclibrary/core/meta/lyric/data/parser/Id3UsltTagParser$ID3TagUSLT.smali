.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ID3TagUSLT"
.end annotation


# static fields
.field static final TAG_LYRIC_CONTENTS_DESCRIPTO_NONUNICODE:I = 0x1

.field static final TAG_LYRIC_CONTENTS_DESCRIPTO_UNICODE:I = 0x2

.field static final TAG_LYRIC_ENCODING:I = 0x1

.field static final TAG_LYRIC_LANGUAGE:I = 0x3

.field static final USLT:Ljava/lang/String; = "USLT"


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

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->encoding:[B

    const/4 v1, 0x3

    .line 57
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->language:[B

    const/4 v1, 0x2

    .line 59
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->unicodDescripto:[B

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->nonUnicodDescripto:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$1;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;-><init>()V

    return-void
.end method
