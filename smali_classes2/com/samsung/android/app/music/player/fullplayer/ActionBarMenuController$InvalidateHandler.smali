.class final Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvalidateHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;->removeMessages(I)V

    const-wide/16 v1, 0x32

    .line 121
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-eqz v0, :cond_0

    .line 126
    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;

    if-eqz p1, :cond_0

    .line 127
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->getState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "menu"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method
