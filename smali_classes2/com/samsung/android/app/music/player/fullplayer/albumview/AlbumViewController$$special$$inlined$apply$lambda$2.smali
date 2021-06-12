.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$2;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    .line 488
    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-super {p0, p1}, Landroid/support/transition/TransitionListenerAdapter;->onTransitionEnd(Landroid/support/transition/Transition;)V

    .line 496
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V

    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 2

    const-string v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V

    .line 491
    invoke-super {p0, p1}, Landroid/support/transition/TransitionListenerAdapter;->onTransitionStart(Landroid/support/transition/Transition;)V

    return-void
.end method
