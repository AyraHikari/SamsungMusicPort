.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeOutInText"
.end annotation


# static fields
.field private static final a:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private final b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->c:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a:Landroid/view/animation/DecelerateInterpolator;

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
