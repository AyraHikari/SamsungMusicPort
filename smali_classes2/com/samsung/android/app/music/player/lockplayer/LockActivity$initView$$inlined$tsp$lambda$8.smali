.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(Z)V

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(Z)V

    :goto_0
    return-void
.end method
