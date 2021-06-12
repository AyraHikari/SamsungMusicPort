.class public abstract Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public a(ZI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method
