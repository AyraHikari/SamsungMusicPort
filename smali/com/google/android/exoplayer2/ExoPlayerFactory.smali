.class public final Lcom/google/android/exoplayer2/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 2

    .line 219
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    sget-object v1, Lcom/google/android/exoplayer2/util/Clock;->a:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/util/Clock;)V

    return-object v0
.end method
