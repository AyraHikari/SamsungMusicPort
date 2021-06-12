.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 74
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOffAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method
