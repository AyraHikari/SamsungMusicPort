.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ID3TagHeader"
.end annotation


# static fields
.field static final FLAG:I = 0x1

.field static final IDENTIFIER:I = 0x3

.field static final SIZE:I = 0x4

.field static final VERSION:I = 0x2


# instance fields
.field final flags:[B

.field final identifier:[B

.field final size:[B

.field final version:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->identifier:[B

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->version:[B

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->flags:[B

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;-><init>()V

    return-void
.end method
