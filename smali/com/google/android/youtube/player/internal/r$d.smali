.class public final Lcom/google/android/youtube/player/internal/r$d;
.super Lcom/google/android/youtube/player/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/internal/r;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/player/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$d;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$d;->a:Lcom/google/android/youtube/player/internal/r;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$d;->a:Lcom/google/android/youtube/player/internal/r;

    iget-object v1, v1, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/player/internal/r$c;

    iget-object v3, p0, Lcom/google/android/youtube/player/internal/r$d;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-direct {v2, v3, p1, p2}, Lcom/google/android/youtube/player/internal/r$c;-><init>(Lcom/google/android/youtube/player/internal/r;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
