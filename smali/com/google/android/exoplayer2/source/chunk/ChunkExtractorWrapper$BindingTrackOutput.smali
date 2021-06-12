.class final Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/Format;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/Format;

.field private e:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->b:I

    .line 166
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->c:I

    .line 167
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->d:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    return p1
.end method

.method public a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->d:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->d:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a:Lcom/google/android/exoplayer2/Format;

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V
    .locals 2

    if-nez p1, :cond_0

    .line 172
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->c:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 176
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method
