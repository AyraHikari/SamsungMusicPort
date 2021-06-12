.class final Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

.field private final b:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 185
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;
    .locals 14

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->b:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->b:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 295
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->f:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->g:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_0

    return-object p1

    .line 299
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    iget v5, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->a:I

    iget v6, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->b:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->c:Lcom/google/android/exoplayer2/Format;

    iget v8, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->d:I

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Ljava/lang/Object;I)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 285
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    const-wide/16 v1, 0x0

    .line 287
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a()V

    :cond_0
    return-void
.end method

.method public a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 245
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    .line 244
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public a(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b()V

    :cond_0
    return-void
.end method

.method public b(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public c(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c()V

    :cond_0
    return-void
.end method

.method public c(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->d(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->c:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_0
    return-void
.end method
