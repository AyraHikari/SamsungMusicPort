.class public final Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->invoke()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string p3, "LockGestureDetector"

    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScroll "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 41
    iget-object p3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    iget-object p3, p3, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    iget-object p2, p2, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->c(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;->a(F)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "LockGestureDetector"

    const-string v0, "onSingleTapUp"

    .line 19
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->b(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->$touchView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->c(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;->$touchView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;->onClick(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
