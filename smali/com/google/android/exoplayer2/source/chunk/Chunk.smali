.class public abstract Lcom/google/android/exoplayer2/source/chunk/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# instance fields
.field public final b:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:I

.field public final f:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:J

.field public final h:J

.field protected final i:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 89
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 90
    iput p3, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->c:I

    .line 91
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 92
    iput p5, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->e:I

    .line 93
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->f:Ljava/lang/Object;

    .line 94
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    .line 95
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 4

    .line 102
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->h:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract f()J
.end method
