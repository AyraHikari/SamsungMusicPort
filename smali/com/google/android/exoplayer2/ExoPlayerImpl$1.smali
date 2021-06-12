.class Lcom/google/android/exoplayer2/ExoPlayerImpl$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ExoPlayerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$1;->a:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$1;->a:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(Landroid/os/Message;)V

    return-void
.end method
