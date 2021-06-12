.class Lcom/samsung/android/app/music/view/transition/ChangeRound$3;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Landroid/view/ViewOutlineProvider;

.field final synthetic d:Lcom/samsung/android/app/music/view/transition/ChangeRound;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/view/View;ZLandroid/view/ViewOutlineProvider;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->d:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    iput-object p2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->b:Z

    iput-object p4, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->c:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->b:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;->c:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
