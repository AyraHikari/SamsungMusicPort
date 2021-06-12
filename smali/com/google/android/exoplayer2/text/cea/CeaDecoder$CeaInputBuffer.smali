.class final Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;J)J
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->e:J

    return-wide p1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)I
    .locals 8
    .param p1    # Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 186
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->c:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 188
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->e:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->e:J

    sub-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->a(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)I

    move-result p1

    return p1
.end method
