.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# instance fields
.field private A:[I

.field private B:I

.field private C:Z

.field private D:[Z

.field private E:[Z

.field private F:J

.field private G:J

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:J

.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field private final d:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final e:Lcom/google/android/exoplayer2/Format;

.field private final f:I

.field private final g:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;

.field private final m:Landroid/os/Handler;

.field private n:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private o:[I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Lcom/google/android/exoplayer2/Format;

.field private x:Z

.field private y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private z:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a:I

    .line 154
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 155
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 156
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->d:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 157
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->e:Lcom/google/android/exoplayer2/Format;

    .line 158
    iput p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f:I

    .line 159
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 160
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 161
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    .line 162
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    const/4 p2, -0x1

    .line 163
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    .line 164
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    .line 165
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 166
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->E:[Z

    .line 167
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    .line 169
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->k:Ljava/lang/Runnable;

    .line 176
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->l:Ljava/lang/Runnable;

    .line 183
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->m:Landroid/os/Handler;

    .line 184
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    .line 185
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .locals 9

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 949
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->b:I

    move v4, p2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    const/4 v4, -0x1

    .line 950
    :goto_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/MimeTypes;->g(Ljava/lang/String;)I

    move-result p2

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 954
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    :cond_2
    move-object v2, p2

    .line 956
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v6, p0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->x:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->l()V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 6

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 973
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 974
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->g(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 976
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->g(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 977
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    const-string v1, "application/cea-608"

    .line 980
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 981
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v4

    .line 982
    :cond_4
    :goto_0
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->z:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->z:I

    if-ne p0, p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3
.end method

.method private static a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 0

    .line 968
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return p0
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z
    .locals 4

    .line 754
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->a:I

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 757
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->g()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static b(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
    .locals 3

    const-string v0, "HlsSampleStreamWrapper"

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmapped track with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance p0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->k()V

    return-void
.end method

.method private d(J)Z
    .locals 6

    .line 918
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 920
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    .line 921
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 922
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 928
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->E:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->C:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private j()V
    .locals 6

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 766
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->H:Z

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->H:Z

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    .line 773
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->l()V

    return-void
.end method

.method private l()V
    .locals 4

    .line 777
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->x:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 781
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_3

    .line 788
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->m()V

    goto :goto_1

    .line 791
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n()V

    const/4 v0, 0x1

    .line 792
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->g()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private m()V
    .locals 6

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    .line 799
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    .line 800
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 802
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 803
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v3

    .line 804
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 805
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private n()V
    .locals 14

    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v3, v0, :cond_5

    .line 849
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 851
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 853
    :cond_0
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    .line 855
    :cond_1
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-le v6, v4, :cond_3

    move v5, v3

    move v4, v6

    goto :goto_2

    :cond_3
    if-ne v6, v4, :cond_4

    if-eq v5, v1, :cond_4

    const/4 v5, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 871
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->b()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 872
    iget v8, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    .line 875
    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->B:I

    .line 876
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 878
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    aput v1, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 882
    :cond_6
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_a

    .line 884
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/SampleQueue;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    if-ne v9, v5, :cond_8

    .line 886
    new-array v11, v8, [Lcom/google/android/exoplayer2/Format;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_7

    .line 888
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    invoke-static {v13, v10, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 890
    :cond_7
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v1, v9

    .line 891
    iput v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->B:I

    goto :goto_7

    :cond_8
    if-ne v4, v6, :cond_9

    .line 893
    iget-object v11, v10, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 894
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->e:Lcom/google/android/exoplayer2/Format;

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 895
    :goto_6
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v13, v7, [Lcom/google/android/exoplayer2/Format;

    invoke-static {v11, v10, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v12, v1, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 898
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 900
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method private o()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return-object v0
.end method

.method private p()Z
    .locals 4

    .line 908
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

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


# virtual methods
.method public a(I)I
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    aget v0, v0, p1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x3

    :goto_0
    return v2

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_3

    return v2

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    return v0
.end method

.method public a(IJ)I
    .locals 4

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    .line 476
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 477
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->n()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 479
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method public a(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 9

    .line 442
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    .line 450
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 454
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/util/List;II)V

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 457
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->e:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->f:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->g:J

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 463
    :cond_3
    iput-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->w:Lcom/google/android/exoplayer2/Format;

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v0, p1

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p6

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v2

    .line 604
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v4

    const/16 v21, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 607
    :goto_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v3, v1, v2, v15}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    .line 609
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 610
    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 611
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    :cond_3
    const/16 v22, 0x1

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    .line 617
    :goto_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v17

    move-wide/from16 v13, p2

    move-object v1, v15

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v22

    .line 617
    invoke-virtual/range {v2 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    .line 622
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    if-nez v1, :cond_5

    .line 623
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c(J)Z

    goto :goto_4

    .line 625
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :goto_4
    const/4 v1, 0x2

    return v1

    .line 629
    :cond_6
    instance-of v1, v1, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v1, :cond_7

    const/16 v21, 0x3

    :cond_7
    return v21
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 56
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 7

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    .line 667
    iget v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    if-eq v5, v2, :cond_2

    .line 668
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p:Z

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    aget-object p1, p1, p2

    goto :goto_0

    .line 671
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_0
    return-object p1

    .line 673
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p:Z

    .line 674
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    aput p1, p2, v0

    .line 675
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    aget-object p1, p1, p2

    return-object p1

    .line 676
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->K:Z

    if-eqz v2, :cond_a

    .line 677
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v3, :cond_7

    .line 680
    iget v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    if-eq v5, v2, :cond_6

    .line 681
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->r:Z

    if-eqz v0, :cond_5

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    aget-object p1, p1, p2

    goto :goto_1

    .line 684
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_1
    return-object p1

    .line 686
    :cond_5
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->r:Z

    .line 687
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    aput p1, p2, v0

    .line 688
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    aget-object p1, p1, p2

    return-object p1

    .line 689
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->K:Z

    if-eqz v2, :cond_a

    .line 690
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_9

    .line 694
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    aget v5, v5, v2

    if-ne v5, p1, :cond_8

    .line 695
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v2

    return-object p1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 698
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->K:Z

    if-eqz v2, :cond_a

    .line 699
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    .line 702
    :cond_a
    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->d:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 703
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->L:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(J)V

    .line 704
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 705
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    add-int/lit8 v6, v0, 0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    .line 706
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o:[I

    aput p1, v5, v0

    .line 707
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 708
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v2, p1, v0

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->E:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->E:[Z

    .line 710
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->E:[Z

    if-eq p2, v4, :cond_b

    if-ne p2, v3, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    aput-boolean v1, p1, v0

    .line 712
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->C:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->E:[Z

    aget-boolean v1, v1, v0

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->C:Z

    if-ne p2, v4, :cond_d

    .line 714
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p:Z

    .line 715
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->q:I

    goto :goto_3

    :cond_d
    if-ne p2, v3, :cond_e

    .line 717
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->r:Z

    .line 718
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->s:I

    .line 720
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    return-object v2
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 726
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->K:Z

    .line 727
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 646
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p:Z

    .line 647
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->r:Z

    .line 649
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 650
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 653
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 654
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 368
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 373
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 739
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->m:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    .line 207
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 208
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 209
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->B:I

    .line 210
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->g()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 575
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 576
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v17

    .line 576
    invoke-virtual/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 579
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    if-nez v1, :cond_0

    .line 580
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c(J)Z

    goto :goto_0

    .line 582
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 589
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    .line 591
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f()J

    move-result-wide v17

    .line 589
    invoke-virtual/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j()V

    .line 594
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    if-lez v1, :cond_0

    .line 595
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 56
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 56
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    move-result p1

    return p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v11, p5

    .line 264
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 265
    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 267
    :goto_0
    array-length v6, v1

    const/4 v7, 0x0

    const/4 v14, 0x1

    if-ge v5, v6, :cond_2

    .line 268
    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    aget-object v6, v1, v5

    if-eqz v6, :cond_0

    aget-boolean v8, p2, v5

    if-nez v8, :cond_1

    .line 269
    :cond_0
    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    sub-int/2addr v8, v14

    iput v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    .line 270
    aget-object v8, v2, v5

    check-cast v8, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->a()V

    .line 271
    aput-object v7, v2, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    .line 277
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->I:Z

    if-eqz v5, :cond_3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    cmp-long v4, v11, v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 284
    :goto_2
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->c()Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    move/from16 v16, v4

    move-object v9, v5

    const/4 v4, 0x0

    .line 287
    :goto_3
    array-length v6, v1

    if-ge v4, v6, :cond_9

    .line 288
    aget-object v6, v2, v4

    if-nez v6, :cond_8

    aget-object v6, v1, v4

    if-eqz v6, :cond_8

    .line 289
    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    .line 290
    aget-object v6, v1, v4

    .line 291
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v8

    .line 292
    iget v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->B:I

    if-ne v8, v10, :cond_6

    .line 294
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    move-object v9, v6

    .line 296
    :cond_6
    new-instance v6, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-direct {v6, v0, v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v6, v2, v4

    .line 297
    aput-boolean v14, p4, v4

    .line 299
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    if-eqz v6, :cond_8

    if-nez v16, :cond_8

    .line 300
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    aget v8, v10, v8

    aget-object v6, v6, v8

    .line 301
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 306
    invoke-virtual {v6, v11, v12, v14, v14}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 307
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->f()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 312
    :cond_9
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->v:I

    if-nez v1, :cond_c

    .line 313
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->d()V

    .line 314
    iput-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->w:Lcom/google/android/exoplayer2/Format;

    .line 315
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 317
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    if-eqz v1, :cond_a

    .line 319
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_5
    if-ge v13, v2, :cond_a

    aget-object v3, v1, v13

    .line 320
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->m()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 323
    :cond_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto/16 :goto_a

    .line 325
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j()V

    goto :goto_a

    .line 328
    :cond_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 329
    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 333
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->I:Z

    if-nez v1, :cond_f

    const-wide/16 v4, 0x0

    cmp-long v1, v11, v4

    if-gez v1, :cond_d

    neg-long v4, v11

    :cond_d
    move-wide v7, v4

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v9

    move-wide/from16 v5, p5

    move-object v1, v9

    move-wide/from16 v9, v17

    .line 335
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(JJJ)V

    .line 336
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->b()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->d:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    .line 337
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->i()I

    move-result v1

    if-eq v1, v4, :cond_e

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_10

    .line 349
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->H:Z

    const/4 v15, 0x1

    const/16 v16, 0x1

    goto :goto_8

    :cond_10
    move/from16 v15, p7

    :goto_8
    if-eqz v16, :cond_12

    .line 353
    invoke-virtual {v0, v11, v12, v15}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(JZ)Z

    .line 355
    :goto_9
    array-length v1, v2

    if-ge v13, v1, :cond_12

    .line 356
    aget-object v1, v2, v13

    if-eqz v1, :cond_11

    .line 357
    aput-boolean v14, p4, v13

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 363
    :cond_12
    :goto_a
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->I:Z

    return v16
.end method

.method public b()V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    if-nez v0, :cond_0

    .line 190
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c(J)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->A:[I

    aget p1, v0, p1

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->D:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public b(J)V
    .locals 4

    .line 745
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->L:J

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 747
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(JZ)Z
    .locals 2

    .line 386
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    .line 388
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->d(J)Z

    move-result p3

    if-eqz p3, :cond_0

    return v1

    .line 392
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    .line 393
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    .line 394
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i()V

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(J)Z
    .locals 21

    move-object/from16 v0, p0

    .line 521
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 527
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 529
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    :goto_0
    move-object v6, v1

    move-wide v9, v3

    goto :goto_1

    .line 531
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v1

    .line 532
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->h:J

    goto :goto_0

    .line 534
    :goto_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v7, p1

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;JJLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 535
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->b:Z

    .line 536
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 537
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->c:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 538
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->a()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 541
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    .line 542
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    return v7

    :cond_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    .line 548
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_3
    return v2

    .line 553
    :cond_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 554
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    .line 555
    move-object v1, v3

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 556
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->a(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 557
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f:I

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 560
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v10, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    iget v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a:I

    iget-object v12, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    iget v13, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    iget-object v14, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v1, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v7

    :cond_6
    :goto_2
    return v2
.end method

.method public d()J
    .locals 7

    .line 488
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    return-wide v0

    .line 493
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->F:J

    .line 494
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 495
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    .line 496
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 498
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 500
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->t:Z

    if-eqz v2, :cond_5

    .line 501
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 503
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->G:J

    return-wide v0

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->J:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->o()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->h:J

    :goto_0
    return-wide v0
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->y:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->j()V

    return-void
.end method

.method public h()V
    .locals 4

    .line 404
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->u:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->n:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 408
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->x:Z

    return-void
.end method

.method public i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a()V

    return-void
.end method
