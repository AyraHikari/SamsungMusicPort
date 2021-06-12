.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final g:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
    .locals 0

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->g:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1220
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1221
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->e:Z

    const/16 p3, 0xc

    .line 1222
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1223
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->a:I

    .line 1224
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1225
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->i:I

    .line 1226
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    .line 1227
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1231
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1234
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->f:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1235
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->d:J

    .line 1236
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->h:I

    if-ne v0, v2, :cond_3

    .line 1237
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->g:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->c:I

    .line 1238
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->g:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1239
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->i:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->g:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->h:I

    :cond_3
    return v1
.end method
