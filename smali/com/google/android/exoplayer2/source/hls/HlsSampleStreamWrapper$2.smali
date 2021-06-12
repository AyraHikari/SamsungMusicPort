.class Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;->a:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;->a:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method
