.class Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;Landroid/view/ViewGroup;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$7;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$7;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$7;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a(Landroid/view/ViewGroup;Z)V

    .line 241
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
