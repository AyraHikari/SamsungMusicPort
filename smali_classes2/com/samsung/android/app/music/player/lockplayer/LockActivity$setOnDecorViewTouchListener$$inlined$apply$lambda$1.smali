.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->b:Landroid/view/View;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(F)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b(F)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b(Landroid/view/View;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
