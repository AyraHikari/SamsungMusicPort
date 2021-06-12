.class Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(FFLcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

.field final synthetic b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    .line 646
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->scrollToPosition(I)V

    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;I)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 655
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 660
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;->a()V

    return-void
.end method
