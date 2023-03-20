.class public final Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$doOnResume$1;
.super Ljava/lang/Object;
.source "BaseFragment.kt"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/k;

.field public final synthetic b:Lkotlin/jvm/functions/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/a<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public synthetic b(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/s;)V

    return-void
.end method

.method public h(Landroidx/lifecycle/s;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/r;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$doOnResume$1;->b:Lkotlin/jvm/functions/a;

    invoke-interface {p1}, Lkotlin/jvm/functions/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public synthetic k(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/s;)V

    return-void
.end method

.method public synthetic n(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/s;)V

    return-void
.end method

.method public synthetic q(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/s;)V

    return-void
.end method

.method public synthetic r(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/s;)V

    return-void
.end method
