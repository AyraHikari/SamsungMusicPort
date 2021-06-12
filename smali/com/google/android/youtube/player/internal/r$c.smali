.class public final Lcom/google/android/youtube/player/internal/r$c;
.super Lcom/google/android/youtube/player/internal/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/player/internal/r$b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public final c:Landroid/os/IBinder;

.field final synthetic d:Lcom/google/android/youtube/player/internal/r;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/internal/r;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$c;->d:Lcom/google/android/youtube/player/internal/r;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/player/internal/r$b;-><init>(Lcom/google/android/youtube/player/internal/r;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/youtube/player/internal/r;->a(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$c;->b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    iput-object p3, p0, Lcom/google/android/youtube/player/internal/r$c;->c:Landroid/os/IBinder;

    return-void
.end method
