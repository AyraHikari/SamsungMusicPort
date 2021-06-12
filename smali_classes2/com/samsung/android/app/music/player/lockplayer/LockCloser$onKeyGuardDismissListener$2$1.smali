.class public final Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;->invoke()Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->b:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/app/Activity;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "onDismissCancelled !!"

    .line 28
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloserKt;->a(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "onDismissError !!"

    .line 33
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloserKt;->a(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "onDismissSucceeded !!"

    .line 38
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloserKt;->a(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->d()V

    return-void
.end method
