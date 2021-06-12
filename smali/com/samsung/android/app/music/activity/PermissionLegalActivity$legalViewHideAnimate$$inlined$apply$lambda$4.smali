.class final Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/animation/Animator;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $legalMandatoryView$inlined:Landroid/view/View;

.field final synthetic $legalOptionalView$inlined:Landroid/view/View;

.field final synthetic $legalView$inlined:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;->$legalMandatoryView$inlined:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;->$legalOptionalView$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;->$legalView$inlined:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;->invoke(Landroid/animation/Animator;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;->$legalView$inlined:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
