.class public final Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;->a(F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object p1, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 350
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;->a:Landroid/view/View;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a()V

    return-void
.end method
