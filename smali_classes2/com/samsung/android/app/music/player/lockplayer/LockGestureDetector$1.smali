.class final Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "LockGestureDetector"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnTouchListener event action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->d(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 75
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "LockGestureDetector"

    const-string v1, "ACTION_CANCEL or ACTION_UP"

    .line 65
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->e(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "LockGestureDetector"

    const-string v2, "onMoveEnd"

    .line 67
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->c(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result p1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;->b(F)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "LockGestureDetector"

    const-string v0, "ACTION_DOWN"

    .line 60
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    :pswitch_3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
