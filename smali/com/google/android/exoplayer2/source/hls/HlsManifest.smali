.class public final Lcom/google/android/exoplayer2/source/hls/HlsManifest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field public final b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-void
.end method
