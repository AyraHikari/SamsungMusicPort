.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 3

    .line 173
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 983
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayer"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow - onMultiWindowSizeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 160
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 968
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayer"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow - onMultiWindowModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1$onMultiWindowModeChanged$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1$onMultiWindowModeChanged$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    if-eqz p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->addOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->removeOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    :cond_3
    :goto_1
    return-void
.end method
