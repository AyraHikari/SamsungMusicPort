.class final Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    .line 214
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;->a:Landroid/view/View;

    const-string v1, "legalMandatoryView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;->b:Landroid/view/View;

    const-string v1, "legalOptionalView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 214
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
