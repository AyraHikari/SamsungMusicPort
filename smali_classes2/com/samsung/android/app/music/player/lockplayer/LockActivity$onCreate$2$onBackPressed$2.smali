.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2$onBackPressed$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2$onBackPressed$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2$onBackPressed$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2$onBackPressed$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->finish()V

    return-void
.end method
