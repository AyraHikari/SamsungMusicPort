.class final Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MasterElement"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->a:I

    .line 247
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I
    .locals 0

    .line 240
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->a:I

    return p0
.end method
