.class public final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$onScreenOffAnimationEnd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->onScreenOffAnimationEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$onScreenOffAnimationEnd$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$onScreenOffAnimationEnd$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->access$getMainHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$onScreenOffAnimationEnd$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->access$getService$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;)Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->stopSelf()V

    return-void
.end method
