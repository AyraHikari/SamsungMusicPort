.class public final Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaSource;

.field public final b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private final c:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private d:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private f:J

.field private g:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->c:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->i:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 12

    move-object v0, p0

    .line 156
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 157
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->i:J

    .line 158
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->i:J

    move-wide v10, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    .line 160
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public a(J)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(JZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->g:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 123
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->f:J

    .line 124
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->b(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public b(J)J
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c_()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->g:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    if-eqz v1, :cond_2

    .line 141
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->h:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->h:Z

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->g:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    throw v0
.end method

.method public d()J
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->c:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->f:J

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method
