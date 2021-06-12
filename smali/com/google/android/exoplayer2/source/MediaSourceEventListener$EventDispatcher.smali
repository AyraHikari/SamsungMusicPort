.class public final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 270
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "J)V"
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 283
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a:I

    .line 284
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 285
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->d:J

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 697
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method private a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 702
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 703
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 300
    new-instance v6, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    return-object v6
.end method

.method public a()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 332
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 333
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(IJJ)V
    .locals 12

    move-object v0, p0

    .line 637
    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-wide v1, p2

    .line 644
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 645
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 637
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 670
    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-wide/from16 v1, p5

    .line 677
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 670
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 401
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 402
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 10

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 606
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 607
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    invoke-direct {p0, v1, v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 651
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 652
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$8;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$8;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 322
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 20
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 385
    new-instance v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p11

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;JJJ)V

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-wide/from16 v2, p7

    .line 394
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v16

    move-wide/from16 v2, p9

    .line 395
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v18

    move-object v10, v1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v19}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 385
    invoke-virtual {v0, v9, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 10
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 447
    new-instance v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v9

    move-object v2, p1

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;JJJ)V

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-wide/from16 v2, p7

    .line 455
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p9

    .line 456
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v4

    move-object/from16 p7, v1

    move/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, v2

    move-wide/from16 p15, v4

    invoke-direct/range {p7 .. p16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 447
    invoke-virtual {p0, v9, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 10
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 582
    new-instance v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v9

    move-object v2, p1

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;JJJ)V

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-wide/from16 v2, p7

    .line 590
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p9

    .line 591
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v4

    move-object/from16 p7, v1

    move/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, v2

    move-wide/from16 p15, v4

    invoke-direct/range {p7 .. p16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v2, p17

    move/from16 v3, p18

    .line 582
    invoke-virtual {p0, v9, v1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    .line 362
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 420
    invoke-virtual/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-object/from16 v17, p9

    move/from16 v18, p10

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 548
    invoke-virtual/range {v0 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 348
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 349
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 463
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 464
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 4

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 684
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 685
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$9;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$9;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 10
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 509
    new-instance v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v9

    move-object v2, p1

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;JJJ)V

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-wide/from16 v2, p7

    .line 517
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p9

    .line 518
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(J)J

    move-result-wide v4

    move-object/from16 p7, v1

    move/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, v2

    move-wide/from16 p15, v4

    invoke-direct/range {p7 .. p16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 509
    invoke-virtual {p0, v9, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 482
    invoke-virtual/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 623
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 624
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$7;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$7;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 4

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 524
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 525
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
