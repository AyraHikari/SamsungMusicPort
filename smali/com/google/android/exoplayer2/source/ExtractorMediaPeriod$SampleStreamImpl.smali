.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 763
    iget p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->b:I

    return p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public a_(J)I
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(IJ)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->a:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->h()V

    return-void
.end method
