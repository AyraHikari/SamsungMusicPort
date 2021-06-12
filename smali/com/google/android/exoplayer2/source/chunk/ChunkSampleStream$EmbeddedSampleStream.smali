.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

.field private final c:Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .line 638
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 640
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 641
    iput p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d:I

    return-void
.end method

.method private d()V
    .locals 8

    .line 692
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->e:Z

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->e(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 694
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d:I

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 695
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 698
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->d(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)J

    move-result-wide v6

    .line 693
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 7

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 678
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d()V

    :cond_1
    return p1
.end method

.method public a()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public a_(J)I
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 653
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->n()I

    move-result p1

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 661
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->d()V

    :cond_2
    return p1
.end method

.method public b()Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->b:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
