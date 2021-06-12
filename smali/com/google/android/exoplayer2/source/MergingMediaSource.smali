.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private d:Lcom/google/android/exoplayer2/Timeline;

.field private e:Ljava/lang/Object;

.field private f:I

.field private g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method private a(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 2

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:I

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->c()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:I

    if-eq p1, v0, :cond_1

    .line 166
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    .line 118
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->c:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    .line 136
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:I

    .line 138
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 1

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V

    const/4 p1, 0x0

    .line 102
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 126
    check-cast p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->a:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz p1, :cond_1

    return-void

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-ne p2, p1, :cond_2

    .line 154
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    .line 155
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:Lcom/google/android/exoplayer2/Timeline;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->b()V

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v0
.end method
