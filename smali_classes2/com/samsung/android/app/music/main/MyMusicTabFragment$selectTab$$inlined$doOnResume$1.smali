.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;
.super Ljava/lang/Object;
.source "BaseFragment.kt"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;->selectTab(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/k;

.field public final synthetic b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/k;Lcom/samsung/android/app/music/main/MyMusicTabFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/k;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iput p3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/s;)V

    return-void
.end method

.method public h(Landroidx/lifecycle/s;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/r;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->c:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->B(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->T0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->T(IZ)V

    :goto_0
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
