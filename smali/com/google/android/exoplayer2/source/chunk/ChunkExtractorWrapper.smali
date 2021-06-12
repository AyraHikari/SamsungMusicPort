.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/Format;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

.field private g:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private h:[Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 79
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->b:I

    .line 80
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer2/Format;

    .line 81
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->h:[Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 131
    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->b:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer2/Format;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;-><init>(IILcom/google/android/exoplayer2/Format;)V

    .line 133
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->f:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V

    .line 134
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a:Lcom/google/android/exoplayer2/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->h:[Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->g:Lcom/google/android/exoplayer2/extractor/SeekMap;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    .locals 5

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->f:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .line 108
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->e:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p1, v3, v4, p2, p3}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(JJ)V

    :cond_0
    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->e:Z

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer2/extractor/Extractor;

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(JJ)V

    const/4 p2, 0x0

    .line 116
    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 117
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public b()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->g:Lcom/google/android/exoplayer2/extractor/SeekMap;

    return-object v0
.end method

.method public c()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->h:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method
