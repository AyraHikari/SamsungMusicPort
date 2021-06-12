.class public abstract Lcom/google/android/exoplayer2/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private c:Lcom/google/android/exoplayer2/ExoPlayer;

.field private d:Lcom/google/android/exoplayer2/Timeline;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method protected final a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a()V
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
.end method

.method public final a(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_2

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V

    goto :goto_2

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->e:Ljava/lang/Object;

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;->a(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->e:Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;

    .line 73
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;->a(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 148
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    .line 149
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->e:Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->b:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method
