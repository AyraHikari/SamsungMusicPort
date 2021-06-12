.class public final Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->a:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->b:I

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "iTunSMPB"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 114
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 117
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 118
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_1

    if-lez p1, :cond_2

    .line 120
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->b:I

    .line 121
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    :cond_2
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)Z
    .locals 1

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 76
    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->b:I

    .line 77
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 92
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    if-eqz v3, :cond_0

    .line 93
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    .line 94
    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->c:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
