.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(F)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b(F)V

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b(Landroid/view/View;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->g(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/lyrics/LyricsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->hasLyrics()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    :cond_0
    return-void
.end method
