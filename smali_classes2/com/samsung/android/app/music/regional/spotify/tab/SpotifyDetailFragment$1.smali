.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$1;->a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$1;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
