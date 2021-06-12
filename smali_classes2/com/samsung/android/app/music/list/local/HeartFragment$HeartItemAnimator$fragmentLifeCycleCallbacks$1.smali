.class public final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "key_delete_requested"

    const/4 v0, 0x0

    .line 630
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 631
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->c()V

    :cond_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key_delete_requested"

    .line 623
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->b()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
