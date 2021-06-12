.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TkhdData"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->a:I

    .line 1258
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->b:J

    .line 1259
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J
    .locals 2

    .line 1250
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I
    .locals 0

    .line 1250
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->a:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I
    .locals 0

    .line 1250
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->c:I

    return p0
.end method
