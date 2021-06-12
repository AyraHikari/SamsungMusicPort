.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:Z

.field private final h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 191
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 197
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 217
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bufferForPlaybackMs"

    const-string v1, "0"

    const/4 v2, 0x0

    .line 239
    invoke-static {p4, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "bufferForPlaybackAfterRebufferMs"

    const-string v1, "0"

    .line 240
    invoke-static {p5, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    const-string v1, "bufferForPlaybackMs"

    .line 242
    invoke-static {p2, p4, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    const-string v1, "bufferForPlaybackAfterRebufferMs"

    .line 243
    invoke-static {p2, p5, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "maxBufferMs"

    const-string v1, "minBufferMs"

    .line 248
    invoke-static {p3, p2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 251
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->b:J

    int-to-long p1, p3

    mul-long p1, p1, v0

    .line 252
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->c:J

    int-to-long p1, p4

    mul-long p1, p1, v0

    .line 253
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->d:J

    int-to-long p1, p5

    mul-long p1, p1, v0

    .line 254
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->e:J

    .line 255
    iput p6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->f:I

    .line 256
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->g:Z

    .line 257
    iput-object p8, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 369
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->i:I

    .line 359
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 362
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    if-eqz p1, :cond_1

    .line 364
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->d()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 349
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 350
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->a()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->f(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(Z)V

    return-void
.end method

.method public a([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 268
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->f:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 270
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->f:I

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->i:I

    .line 272
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->i:I

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->a(I)V

    return-void
.end method

.method public a(JF)Z
    .locals 8

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    .line 304
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->b:J

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_1

    .line 309
    invoke-static {v4, v5, p3}, Lcom/google/android/exoplayer2/util/Util;->a(JF)J

    move-result-wide v4

    .line 310
    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->c:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1
    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    .line 313
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->g:Z

    if-nez p1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    goto :goto_2

    .line 314
    :cond_4
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->c:J

    cmp-long p1, p1, v4

    if-gtz p1, :cond_5

    if-eqz v0, :cond_6

    .line 315
    :cond_5
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    .line 317
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    if-eq p1, v1, :cond_8

    .line 318
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    if-eqz p1, :cond_7

    .line 319
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    goto :goto_3

    .line 321
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->h:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 324
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->j:Z

    return p1
.end method

.method public a(JFZ)Z
    .locals 2

    .line 330
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->b(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 331
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->d:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    .line 332
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->g:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 335
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->e()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->i:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 277
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 282
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->a(Z)V

    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/Allocator;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->a:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
