.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/a;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/l$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/exoplayer2/source/hls/h;

.field public final i:Lcom/google/android/exoplayer2/u1$h;

.field public final j:Lcom/google/android/exoplayer2/source/hls/g;

.field public final k:Lcom/google/android/exoplayer2/source/h;

.field public final l:Lcom/google/android/exoplayer2/drm/y;

.field public final m:Lcom/google/android/exoplayer2/upstream/g0;

.field public final n:Z

.field public final o:I

.field public final p:Z

.field public final q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

.field public final r:J

.field public final s:Lcom/google/android/exoplayer2/u1;

.field public t:Lcom/google/android/exoplayer2/u1$g;

.field public u:Lcom/google/android/exoplayer2/upstream/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/h;Lcom/google/android/exoplayer2/drm/y;Lcom/google/android/exoplayer2/upstream/g0;Lcom/google/android/exoplayer2/source/hls/playlist/l;JZIZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/u1;->b:Lcom/google/android/exoplayer2/u1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/u1$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/u1$h;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/u1;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/u1;->d:Lcom/google/android/exoplayer2/u1$g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/source/hls/g;

    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lcom/google/android/exoplayer2/source/hls/h;

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Lcom/google/android/exoplayer2/source/h;

    .line 9
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/y;

    .line 10
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/g0;

    .line 11
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    .line 12
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:J

    .line 13
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    .line 14
    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:I

    .line 15
    iput-boolean p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/h;Lcom/google/android/exoplayer2/drm/y;Lcom/google/android/exoplayer2/upstream/g0;Lcom/google/android/exoplayer2/source/hls/playlist/l;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/h;Lcom/google/android/exoplayer2/drm/y;Lcom/google/android/exoplayer2/upstream/g0;Lcom/google/android/exoplayer2/source/hls/playlist/l;JZIZ)V

    return-void
.end method

.method public static D(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/g$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/g$b;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/g$b;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/g$b;

    .line 3
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/g$e;->e:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/g$b;->r:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p1

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static E(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/g$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/g$d;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/g$d;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-static {p0, p1, p2, p2}, Lcom/google/android/exoplayer2/util/p0;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/playlist/g$d;

    return-object p0
.end method

.method public static H(Lcom/google/android/exoplayer2/source/hls/playlist/g;J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->v:Lcom/google/android/exoplayer2/source/hls/playlist/g$f;

    .line 2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    sub-long/2addr v3, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g$f;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->n:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    move-wide v3, v1

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g$f;->c:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    move-wide v3, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3

    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->m:J

    mul-long v3, v2, v0

    :goto_0
    add-long/2addr v3, p1

    return-wide v3
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/l;->stop()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/y;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/y;->release()V

    return-void
.end method

.method public final B(Lcom/google/android/exoplayer2/source/hls/playlist/g;JJLcom/google/android/exoplayer2/source/hls/i;)Lcom/google/android/exoplayer2/source/q0;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->h:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    .line 2
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/l;->e()J

    move-result-wide v4

    sub-long v17, v2, v4

    .line 3
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->o:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    add-long v5, v17, v5

    move-wide v13, v5

    goto :goto_0

    :cond_0
    move-wide v13, v3

    .line 4
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->F(Lcom/google/android/exoplayer2/source/hls/playlist/g;)J

    move-result-wide v11

    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/u1$g;->a:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/p0;->A0(J)J

    move-result-wide v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H(Lcom/google/android/exoplayer2/source/hls/playlist/g;J)J

    move-result-wide v2

    :goto_1
    move-wide v5, v2

    .line 8
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    add-long v9, v2, v11

    move-wide v7, v11

    .line 9
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/p0;->q(JJJ)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I(Lcom/google/android/exoplayer2/source/hls/playlist/g;J)V

    .line 11
    invoke-virtual {v0, v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G(Lcom/google/android/exoplayer2/source/hls/playlist/g;J)J

    move-result-wide v19

    .line 12
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->f:Z

    if-eqz v2, :cond_2

    move/from16 v23, v4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move/from16 v23, v2

    .line 13
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/source/q0;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    const/16 v21, 0x1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->o:Z

    xor-int/lit8 v22, v1, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/u1;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    move-object/from16 v26, v1

    move-object v6, v2

    move-wide/from16 v7, p2

    move-wide v3, v9

    move-wide/from16 v9, p4

    move-wide v15, v3

    move-object/from16 v24, p6

    invoke-direct/range {v6 .. v26}, Lcom/google/android/exoplayer2/source/q0;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/u1$g;)V

    return-object v2
.end method

.method public final C(Lcom/google/android/exoplayer2/source/hls/playlist/g;JJLcom/google/android/exoplayer2/source/hls/i;)Lcom/google/android/exoplayer2/source/q0;
    .locals 24

    move-object/from16 v0, p1

    .line 1
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->g:Z

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->e:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->r:Ljava/util/List;

    .line 4
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->E(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/g$d;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g$e;->e:J

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->e:J

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v1, 0x0

    :goto_2
    move-wide/from16 v16, v1

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/q0;

    move-object v3, v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    move-wide v12, v10

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/u1;

    move-object/from16 v22, v2

    const/16 v23, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lcom/google/android/exoplayer2/source/q0;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/u1$g;)V

    return-object v1
.end method

.method public final F(Lcom/google/android/exoplayer2/source/hls/playlist/g;)J
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->Y(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->A0(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/g;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final G(Lcom/google/android/exoplayer2/source/hls/playlist/g;J)J
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->u:J

    add-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/u1$g;->a:J

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/p0;->A0(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    .line 3
    :goto_0
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->g:Z

    if-eqz p2, :cond_1

    return-wide v0

    .line 4
    :cond_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->s:Ljava/util/List;

    .line 5
    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->D(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/g$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/g$e;->e:J

    return-wide p1

    .line 7
    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 p1, 0x0

    return-wide p1

    .line 8
    :cond_3
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->r:Ljava/util/List;

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->E(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/g$d;

    move-result-object p1

    .line 10
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g$d;->s:Ljava/util/List;

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->D(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/g$b;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 11
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/g$e;->e:J

    return-wide p1

    .line 12
    :cond_4
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g$e;->e:J

    return-wide p1
.end method

.method public final I(Lcom/google/android/exoplayer2/source/hls/playlist/g;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/u1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/u1;->d:Lcom/google/android/exoplayer2/u1$g;

    iget v1, v0, Lcom/google/android/exoplayer2/u1$g;->d:F

    const v2, -0x800001

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/u1$g;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->v:Lcom/google/android/exoplayer2/source/hls/playlist/g$f;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g$f;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g$f;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/u1$g$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/u1$g$a;-><init>()V

    .line 3
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/p0;->W0(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/u1$g$a;->i(J)Lcom/google/android/exoplayer2/u1$g$a;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v0, p3

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    iget v0, v0, Lcom/google/android/exoplayer2/u1$g;->d:F

    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/u1$g$a;->h(F)Lcom/google/android/exoplayer2/u1$g$a;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    iget p3, p1, Lcom/google/android/exoplayer2/u1$g;->e:F

    :goto_2
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/u1$g$a;->g(F)Lcom/google/android/exoplayer2/u1$g$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u1$g$a;->f()Lcom/google/android/exoplayer2/u1$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/u1$g;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/u$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/r;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/u$b;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object v9

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/a;->r(Lcom/google/android/exoplayer2/source/u$b;)Lcom/google/android/exoplayer2/drm/w$a;

    move-result-object v7

    .line 3
    new-instance v16, Lcom/google/android/exoplayer2/source/hls/l;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lcom/google/android/exoplayer2/source/hls/h;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/source/hls/g;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/o0;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/y;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/g0;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Lcom/google/android/exoplayer2/source/h;

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:I

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Z

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/a;->w()Lcom/google/android/exoplayer2/analytics/s1;

    move-result-object v15

    move-object/from16 v1, v16

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/source/hls/l;-><init>(Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/hls/playlist/l;Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/upstream/o0;Lcom/google/android/exoplayer2/drm/y;Lcom/google/android/exoplayer2/drm/w$a;Lcom/google/android/exoplayer2/upstream/g0;Lcom/google/android/exoplayer2/source/b0$a;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/source/h;ZIZLcom/google/android/exoplayer2/analytics/s1;)V

    return-object v16
.end method

.method public c(Lcom/google/android/exoplayer2/source/hls/playlist/g;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->p:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->h:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/p0;->W0(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v1

    .line 2
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->d:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v7, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v9

    .line 3
    :goto_2
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/l;->f()Lcom/google/android/exoplayer2/source/hls/playlist/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/h;

    invoke-direct {v11, v0, p1}, Lcom/google/android/exoplayer2/source/hls/i;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/h;Lcom/google/android/exoplayer2/source/hls/playlist/g;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/l;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    .line 6
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B(Lcom/google/android/exoplayer2/source/hls/playlist/g;JJLcom/google/android/exoplayer2/source/hls/i;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object v5, p0

    move-object v6, p1

    .line 7
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->C(Lcom/google/android/exoplayer2/source/hls/playlist/g;JJLcom/google/android/exoplayer2/source/hls/i;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    .line 8
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/l3;)V

    return-void
.end method

.method public g()Lcom/google/android/exoplayer2/u1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/u1;

    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/source/r;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/l;->B()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/l;->n()V

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/upstream/o0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/o0;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/y;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/y;->X()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/y;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->w()Lcom/google/android/exoplayer2/analytics/s1;

    move-result-object v1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/y;->b(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/s1;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/u$b;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/u1$h;

    iget-object v1, v1, Lcom/google/android/exoplayer2/u1$h;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/l;->m(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/b0$a;Lcom/google/android/exoplayer2/source/hls/playlist/l$e;)V

    return-void
.end method
