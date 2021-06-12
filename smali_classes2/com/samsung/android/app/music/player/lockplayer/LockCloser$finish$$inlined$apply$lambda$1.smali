.class final Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$$inlined$apply$lambda$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    return-void
.end method
