.class final Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
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
.field final synthetic $destDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->$destDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->invoke(Landroid/animation/Animator;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->$destDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setFraction(F)V

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$crossFadeTo$setImageDrawable$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const/4 v0, 0x0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Landroid/animation/Animator;)V

    return-void
.end method
