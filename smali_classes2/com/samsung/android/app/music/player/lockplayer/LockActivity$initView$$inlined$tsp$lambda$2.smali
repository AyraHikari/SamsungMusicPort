.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;
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

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    sget-object p1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    const-string v0, "launch Player"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Landroid/view/View;)V

    return-void
.end method
