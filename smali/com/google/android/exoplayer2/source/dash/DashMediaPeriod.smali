.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final g:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final i:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

.field private final j:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final k:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

.field private final l:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private o:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

.field private p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private q:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a:I

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->q:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 98
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->r:I

    .line 99
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->b:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 100
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->c:I

    .line 101
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 102
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->e:J

    .line 103
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 104
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->g:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 105
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->j:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 106
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-direct {p1, p2, p12, p10}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->k:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    const/4 p1, 0x0

    .line 107
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 108
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 109
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->l:Ljava/util/IdentityHashMap;

    .line 110
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 111
    invoke-interface {p11, p1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->a([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 112
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    .line 113
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->s:Ljava/util/List;

    .line 114
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->c:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->s:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 116
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 117
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->i:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    .line 118
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a()V

    return-void
.end method

.method private static a(ILjava/util/List;[[I[Z[Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[I[Z[Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 454
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Ljava/util/List;[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 455
    aput-boolean v3, p3, v0

    add-int/lit8 v1, v1, 0x1

    .line 458
    :cond_0
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->b(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    aput-boolean v3, p4, v0

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static a(Ljava/util/List;[[II[Z[Z[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[II[Z[Z[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 472
    aget-object v5, p1, v3

    .line 473
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 474
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v5, v8

    .line 475
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 477
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    .line 478
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 479
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->c:Lcom/google/android/exoplayer2/Format;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 482
    :cond_1
    aget v6, v5, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    add-int/lit8 v8, v4, 0x1

    .line 484
    aget-boolean v10, p3, v3

    const/4 v11, -0x1

    if-eqz v10, :cond_2

    add-int/lit8 v10, v8, 0x1

    move v12, v10

    move v10, v8

    goto :goto_3

    :cond_2
    move v12, v8

    const/4 v10, -0x1

    .line 486
    :goto_3
    aget-boolean v13, p4, v3

    if-eqz v13, :cond_3

    add-int/lit8 v13, v12, 0x1

    goto :goto_4

    :cond_3
    move v13, v12

    const/4 v12, -0x1

    .line 489
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v1, p5, v4

    .line 490
    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->b:I

    .line 491
    invoke-static {v1, v5, v4, v10, v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->a(I[IIII)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v1

    aput-object v1, p6, v4

    if-eq v10, v11, :cond_4

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->a:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":emsg"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "application/x-emsg"

    const/4 v0, 0x0

    invoke-static {v1, v7, v0, v11, v0}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 500
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v7, 0x1

    new-array v11, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    aput-object v1, v11, v7

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v0, p5, v10

    .line 502
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->a([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v0

    aput-object v0, p6, v10

    :cond_4
    const/4 v0, -0x1

    if-eq v12, v0, :cond_5

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":cea608"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/cea-608"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v1, v6, v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    aput-object v0, v7, v6

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v1, p5, v12

    .line 509
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->b([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v0

    aput-object v0, p6, v12

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v4, v13

    move-object v0, p0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    return v4
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Ljava/util/List;)[[I

    move-result-object v1

    .line 377
    array-length v2, v1

    .line 378
    new-array v3, v2, [Z

    .line 379
    new-array v4, v2, [Z

    .line 380
    invoke-static {v2, p0, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(ILjava/util/List;[[I[Z[Z)I

    move-result v0

    add-int/2addr v0, v2

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 385
    new-array v7, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 386
    new-array v8, v0, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-object v0, p0

    move-object v5, v7

    move-object v6, v8

    .line 388
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Ljava/util/List;[[II[Z[Z[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I

    move-result p0

    .line 392
    invoke-static {p1, v7, v8, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V

    .line 394
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {p0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 529
    new-array v2, v1, [I

    .line 530
    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    .line 531
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->f:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    const/16 v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    if-eqz v22, :cond_1

    .line 534
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->f:I

    .line 535
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x4

    aput v3, v2, v6

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 538
    :goto_1
    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->g:I

    if-eq v7, v4, :cond_2

    const/16 v23, 0x1

    goto :goto_2

    :cond_2
    const/16 v23, 0x0

    :goto_2
    if-eqz v23, :cond_3

    .line 540
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->g:I

    .line 541
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x3

    .line 542
    aput v5, v2, v3

    move v3, v4

    .line 544
    :cond_3
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 545
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Format;

    .line 546
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :cond_4
    move-object v4, v1

    move-object v3, v2

    .line 548
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->q:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-eqz v1, :cond_5

    if-eqz v22, :cond_5

    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->k:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 550
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->a()Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    move-object v11, v1

    .line 552
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->b:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v14, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v15, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->q:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->r:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->a:[I

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->b:I

    iget-wide v6, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->e:J

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p2

    move/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v24, v11

    .line 553
    invoke-interface/range {v13 .. v24}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;->a(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZLcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v5

    .line 564
    new-instance v13, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->b:I

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->g:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v10, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->c:I

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, v13

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    move-object v14, v11

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    .line 575
    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v13, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    monitor-exit p0

    return-object v13

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 1

    .line 626
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 627
    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->a()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p3

    const/4 p3, 0x0

    .line 517
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 518
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 519
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-emsg"

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 521
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 522
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->a(I)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "[ZJ",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 216
    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_2

    .line 218
    aget-object v1, p3, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 219
    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    aget-boolean v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 224
    invoke-virtual {p7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 220
    :cond_1
    :goto_1
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    const/4 v1, 0x0

    .line 221
    aput-object v1, p3, v0

    .line 228
    :cond_2
    :goto_2
    aget-object v1, p3, v0

    if-nez v1, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v1

    .line 230
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->i:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v2, v1

    .line 231
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->c:I

    if-nez v3, :cond_3

    .line 232
    aget-object v3, p1, v0

    invoke-direct {p0, v2, v3, p5, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    .line 234
    invoke-virtual {p7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    aput-object v2, p3, v0

    const/4 v1, 0x1

    .line 236
    aput-boolean v1, p4, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "[Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/EventSampleStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 245
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 246
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    if-eqz v2, :cond_2

    .line 247
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 248
    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    aget-boolean v3, p2, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 249
    aput-object v2, p3, v1

    .line 255
    :cond_2
    :goto_2
    aget-object v2, p3, v1

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 256
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 257
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->i:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    .line 258
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 259
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->s:Ljava/util/List;

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->d:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 260
    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 261
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->q:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Lcom/google/android/exoplayer2/Format;Z)V

    .line 262
    aput-object v4, p3, v1

    const/4 v2, 0x1

    .line 263
    aput-boolean v2, p4, v1

    .line 264
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 594
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 595
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->c:Ljava/util/List;

    const/4 v4, 0x0

    .line 596
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 597
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 598
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static a(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 622
    new-array p0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static a(Ljava/util/List;)[[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 398
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 399
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 401
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->a:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_0
    new-array v3, v0, [[I

    .line 405
    new-array v4, v0, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    .line 409
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 413
    aput-boolean v7, v4, v5

    .line 415
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->e:Ljava/util/List;

    .line 414
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 417
    new-array v7, v7, [I

    aput v5, v7, v2

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_3

    .line 419
    :cond_2
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 420
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 421
    aput v5, v9, v2

    const/4 v10, 0x0

    .line 422
    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 423
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 424
    aput-boolean v7, v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 425
    aput v11, v9, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 427
    aput-object v9, v3, v6

    move v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v6, v0, :cond_5

    .line 432
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_5
    return-object v3
.end method

.method private static b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 583
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 584
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v2, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 585
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "[ZJ",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 277
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 278
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v2, :cond_0

    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-eqz v2, :cond_2

    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    .line 281
    :cond_1
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Lcom/google/android/exoplayer2/source/SampleStream;)V

    const/4 v2, 0x0

    .line 282
    aput-object v2, p3, v1

    .line 286
    :cond_2
    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    .line 287
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 288
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->i:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    .line 289
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 290
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->e:I

    invoke-virtual {p7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 292
    aget-object v5, p3, v1

    if-nez v3, :cond_3

    .line 293
    instance-of v6, v5, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    goto :goto_1

    :cond_3
    instance-of v6, v5, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v6, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_6

    .line 297
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Lcom/google/android/exoplayer2/source/SampleStream;)V

    if-nez v3, :cond_5

    .line 298
    new-instance v2, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    goto :goto_2

    :cond_5
    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->b:I

    .line 299
    invoke-virtual {v3, p5, p6, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v2

    :goto_2
    aput-object v2, p3, v1

    .line 300
    aput-boolean v4, p4, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static b(Ljava/util/List;[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 608
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 609
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->d:Ljava/util/List;

    const/4 v4, 0x0

    .line 610
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 611
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    .line 612
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 6

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 357
    iget v4, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 358
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 11

    move-object v8, p0

    .line 187
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 188
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    .line 190
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V

    move-object v5, v10

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZLjava/util/List;)V

    move-wide/from16 v5, p5

    .line 194
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->b([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V

    .line 197
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 202
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 203
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->j:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 204
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->a([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method

.method public a(J)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 310
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->m:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 171
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->b(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 159
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 7

    .line 128
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->q:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 129
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->r:I

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->k:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 133
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->m:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 137
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->s:Ljava/util/List;

    .line 138
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    .line 139
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 140
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->a(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b(J)J
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 346
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 349
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 368
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->m:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 331
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->t:Z

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c()V

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->t:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->c(J)Z

    move-result p1

    return p1
.end method

.method public c_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->a()V

    return-void
.end method

.method public d()J
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->k:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->b()V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 151
    invoke-virtual {v3, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b()V

    return-void
.end method
