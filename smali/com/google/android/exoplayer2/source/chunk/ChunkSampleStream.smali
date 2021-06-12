.class public Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/SampleStream;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# instance fields
.field public final a:I

.field b:J

.field c:Z

.field private final d:[I

.field private final e:[Lcom/google/android/exoplayer2/Format;

.field private final f:[Z

.field private final g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final j:I

.field private final k:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final l:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final p:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final q:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

.field private r:Lcom/google/android/exoplayer2/Format;

.field private s:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private t:J

.field private u:J


# direct methods
.method public constructor <init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/android/exoplayer2/Format;",
            "TT;",
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "JI",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    .line 106
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->d:[I

    .line 107
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->e:[Lcom/google/android/exoplayer2/Format;

    .line 108
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 109
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 110
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 111
    iput p9, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->j:I

    .line 112
    new-instance p3, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 113
    new-instance p3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->l:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 114
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    .line 115
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->n:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 117
    :cond_0
    array-length p4, p2

    .line 118
    :goto_0
    new-array p5, p4, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 119
    new-array p5, p4, [Z

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f:[Z

    add-int/lit8 p5, p4, 0x1

    .line 120
    new-array p9, p5, [I

    .line 121
    new-array p5, p5, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 123
    new-instance p10, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-direct {p10, p6}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 124
    aput p1, p9, p3

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object p1, p5, p3

    :goto_1
    if-ge p3, p4, :cond_1

    .line 128
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-direct {p1, p6}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 129
    iget-object p10, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object p1, p10, p3

    add-int/lit8 p10, p3, 0x1

    .line 130
    aput-object p1, p5, p10

    .line 131
    aget p1, p2, p3

    aput p1, p9, p10

    move p3, p10

    goto :goto_1

    .line 134
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-direct {p1, p9, p5}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;-><init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->q:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 135
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    .line 136
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    return-void
.end method

.method private a(II)V
    .locals 2

    sub-int v0, p1, p2

    const/4 v1, 0x0

    .line 571
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(II)I

    move-result p1

    :goto_0
    if-gt v0, p1, :cond_1

    .line 577
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 550
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->f()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method private a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 0

    .line 541
    instance-of p1, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f:[Z

    return-object p0
.end method

.method private b(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 602
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    .line 564
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->d:[I

    return-object p0
.end method

.method private c(I)V
    .locals 8

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 583
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->e:I

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->f:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->g:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 589
    :cond_0
    iput-object v7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->r:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->e:[Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    return-wide v0
.end method

.method private d(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 618
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/util/List;II)V

    .line 619
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(I)V

    .line 620
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p1, p1

    if-ge v1, p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method private i()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 7

    .line 351
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 355
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    .line 358
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->f()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(II)V

    :cond_1
    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v17

    .line 415
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    .line 416
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v21, 0x0

    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 418
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 420
    :goto_1
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v15, p6

    invoke-interface {v6, v1, v5, v15}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_2

    const-string v2, "ChunkSampleStream"

    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    .line 422
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_4

    .line 426
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->d(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 427
    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 428
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    :cond_4
    const/16 v22, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v22, 0x0

    .line 434
    :goto_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v22

    invoke-virtual/range {v2 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    .line 439
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    const/4 v1, 0x2

    return v1

    :cond_6
    return v21
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->a(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->d:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 172
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 173
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f:[Z

    aput-boolean v1, p3, v0

    .line 174
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 175
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    .line 176
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public a(J)V
    .locals 6

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 513
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->n:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->a(JLjava/util/List;)I

    move-result p1

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge p1, v0, :cond_3

    .line 520
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    if-ne p1, v0, :cond_4

    return-void

    .line 529
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object p2

    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->h:J

    .line 530
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->d(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object p1

    .line 531
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 532
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    :cond_5
    const/4 p2, 0x0

    .line 534
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(IJJ)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->e()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(JZZ)V

    .line 149
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->e()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 151
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->j()J

    move-result-wide v0

    const/4 p2, 0x0

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v2

    if-ge p2, v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 387
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 388
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v17

    .line 388
    invoke-virtual/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 392
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 398
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v17

    .line 398
    invoke-virtual/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 403
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    .line 404
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 405
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->s:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->m()V

    .line 316
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 317
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public a_(J)I
    .locals 4

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 370
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->n()I

    move-result v1

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    if-lez v1, :cond_3

    .line 378
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->f()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(II)V

    :cond_3
    return v1
.end method

.method public b(J)V
    .locals 10

    .line 232
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 237
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 242
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 244
    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->g:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 245
    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 257
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 258
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->c(I)Z

    move-result v0

    const-wide/high16 v3, -0x8000000000000000L

    .line 259
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b:J

    goto :goto_4

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 265
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->e()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 262
    :goto_2
    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 267
    :goto_3
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b:J

    :goto_4
    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    .line 274
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 275
    invoke-virtual {v5, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 279
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    .line 280
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    .line 281
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 283
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto :goto_7

    .line 285
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    .line 286
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_6
    if-ge v2, p2, :cond_9

    aget-object v0, p1, v2

    .line 287
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method

.method public b()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->a()V

    :cond_0
    return-void
.end method

.method public c(J)Z
    .locals 21

    move-object/from16 v0, p0

    .line 450
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 454
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 459
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    :goto_0
    move-object v7, v3

    move-wide v10, v4

    goto :goto_1

    .line 461
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v3

    .line 462
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->h:J

    goto :goto_0

    .line 464
    :goto_1
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->g:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->l:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v8, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->a(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V

    .line 465
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->l:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->b:Z

    .line 466
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->l:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 467
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->l:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->a()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    .line 470
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    .line 471
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    return v7

    :cond_2
    if-nez v4, :cond_3

    return v2

    .line 479
    :cond_3
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 480
    move-object v3, v4

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz v1, :cond_6

    .line 482
    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->g:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_2

    .line 484
    :cond_5
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    :goto_2
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b:J

    .line 485
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    .line 487
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->q:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->a(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V

    .line 488
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->j:I

    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 491
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v10, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v11, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    iget-object v12, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v14, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v1, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v3, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v7

    :cond_8
    :goto_3
    return v2
.end method

.method public d()J
    .locals 4

    .line 198
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    return-wide v0

    .line 203
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->u:J

    .line 204
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 208
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    return-wide v0

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->c:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->i()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->h:J

    :goto_0
    return-wide v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->o:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->p:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 326
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->s:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->s:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    :cond_1
    return-void
.end method

.method h()Z
    .locals 4

    .line 559
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
