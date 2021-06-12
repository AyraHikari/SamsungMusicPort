.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaSource;

.field public final b:Lcom/google/android/exoplayer2/Timeline;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 1688
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->b:Lcom/google/android/exoplayer2/Timeline;

    .line 1689
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->c:Ljava/lang/Object;

    return-void
.end method
