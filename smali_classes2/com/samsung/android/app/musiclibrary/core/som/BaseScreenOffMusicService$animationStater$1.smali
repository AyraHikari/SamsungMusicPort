.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getCancel$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService trying to anim start but it is already canceled."

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getScreenOffMusicView$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getScreenOffMusicHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOn()V

    return-void
.end method
