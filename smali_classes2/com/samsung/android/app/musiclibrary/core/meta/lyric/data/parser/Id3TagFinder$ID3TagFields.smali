.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ID3TagFields"
.end annotation


# static fields
.field private static final TAG_FLAG:I = 0x2

.field private static final TAG_SIZE:I = 0x4

.field private static final TAG_SIZE_V2:I = 0x3

.field private static final TAG_TYPE:I = 0x4

.field private static final TAG_TYPE_V2:I = 0x3


# instance fields
.field private final flag:[B

.field private majorVer:I

.field private offset:J

.field private final size:[B

.field private final type:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->majorVer:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 78
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->type:[B

    .line 79
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->size:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 81
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->type:[B

    .line 82
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->size:[B

    .line 84
    :goto_0
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->flag:[B

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->type:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->size:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->majorVer:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->flag:[B

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->offset:J

    return-wide p1
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->offset:J

    return-wide v0
.end method

.method public getTagSize()I
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->size:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v0, :cond_3

    .line 92
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->majorVer:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->majorVer:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->majorVer:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 96
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->size:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0x7f

    add-int/lit8 v4, v1, 0x1

    sub-int v4, v0, v4

    mul-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_2

    .line 93
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->size:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    sub-int v5, v0, v5

    mul-int/lit8 v5, v5, 0x8

    shl-int v3, v4, v5

    or-int/2addr v2, v3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const/16 v2, 0x8

    :cond_4
    return v2
.end method
