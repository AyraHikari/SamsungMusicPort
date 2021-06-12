.class final Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/app/Activity;)V

    return-void
.end method
