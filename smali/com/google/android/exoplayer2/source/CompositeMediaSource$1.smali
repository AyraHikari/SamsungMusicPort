.class Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/exoplayer2/source/CompositeMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->b:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->b:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method
