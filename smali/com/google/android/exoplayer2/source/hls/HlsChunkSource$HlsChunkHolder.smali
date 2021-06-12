.class public final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsChunkHolder"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field public b:Z

.field public c:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->b:Z

    .line 78
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->c:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-void
.end method
