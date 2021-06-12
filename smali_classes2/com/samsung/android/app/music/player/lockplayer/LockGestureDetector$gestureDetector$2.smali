.class final Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/GestureDetector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/GestureDetector;
    .locals 3

    .line 11
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;->invoke()Landroid/view/GestureDetector;

    move-result-object v0

    return-object v0
.end method
