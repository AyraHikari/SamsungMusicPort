.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$5;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$5;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$5;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$5;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->d()V

    return-void
.end method
