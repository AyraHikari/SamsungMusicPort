.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/k;
.source "MyMusicTabFragment.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/b0;
.implements Lcom/samsung/android/app/musiclibrary/ui/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;,
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;,
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$a;
    }
.end annotation


# static fields
.field public static final K:Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;


# instance fields
.field public final B:Lkotlin/g;

.field public final C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field public E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

.field public final F:Lkotlin/g;

.field public G:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;

.field public H:Ljava/lang/Integer;

.field public I:Ljava/lang/String;

.field public J:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->K:Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;-><init>()V

    .line 2
    sget-object v0, Lkotlin/i;->c:Lkotlin/i;

    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$e;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    invoke-static {v0, v1}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->B:Lkotlin/g;

    .line 3
    new-instance v1, Lcom/samsung/android/app/music/main/z;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/z;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 4
    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$d;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$d;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    invoke-static {v0, v1}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->F:Lkotlin/g;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->J:Z

    const-string v1, "UiList"

    .line 6
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/k;->d:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/k;->e:Z

    return-void
.end method

.method public static synthetic O0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->Y0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic P0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->Z0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    return-void
.end method

.method public static final synthetic Q0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/v;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->X0()Lcom/samsung/android/app/music/main/v;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic R0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->G:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;

    return-object p0
.end method

.method public static final synthetic S0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    return-object p0
.end method

.method public static final synthetic T0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    return-object p0
.end method

.method public static final synthetic U0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->G:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;

    return-void
.end method

.method public static final Y0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tab_menu_list"

    .line 1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->X0()Lcom/samsung/android/app/music/main/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/v;->getActionMode()Landroidx/appcompat/view/b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/b;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final Z0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p0, :cond_0

    const-string p0, "viewPager"

    invoke-static {p0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/util/q;->a:Lcom/samsung/android/app/music/util/q;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/q;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public I0()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f0e008e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public K0(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/k;->K0(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->d(Landroidx/fragment/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p3}, Lcom/samsung/android/app/music/kotlin/extension/a;->a(Lcom/samsung/android/app/musiclibrary/ui/f;Z)V

    :goto_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    const p3, 0x7f0b05c3

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById(R.id.view_pager)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const p3, 0x7f0b0533

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "view.findViewById(R.id.tab_layout)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    .line 5
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const-string p3, "viewPager"

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->J:Z

    if-eqz v3, :cond_4

    .line 6
    iput-boolean v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->J:Z

    .line 7
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v3, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v0

    :cond_3
    new-instance v4, Lcom/samsung/android/app/music/main/a0;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/main/a0;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v1

    goto :goto_1

    .line 8
    :cond_4
    sget-object v3, Lcom/samsung/android/app/music/util/q;->a:Lcom/samsung/android/app/music/util/q;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/util/q;->p()I

    move-result v3

    .line 9
    :goto_1
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    new-instance v3, Lcom/samsung/android/app/music/main/MyMusicTabFragment$a;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$a;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_6

    invoke-static {p3}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    if-eqz p2, :cond_7

    const-string p1, "key_tab_id"

    .line 12
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "activity!!.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->y(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->K:Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$b;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 14
    :cond_8
    invoke-static {p0, v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->i(Landroidx/fragment/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const p2, 0x10004

    const-string v1, "music_current_tab"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_3

    :cond_9
    :goto_2
    const p1, 0x10002

    .line 15
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p2, :cond_a

    invoke-static {p3}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p2, v0

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->B(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_4
    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 16
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const-string v1, "tabLayout"

    if-nez p2, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p2, v0

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v2, :cond_d

    invoke-static {p3}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v0

    :cond_d
    invoke-virtual {p2, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->J(Landroidx/viewpager/widget/ViewPager;I)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    move-object v0, p1

    :goto_5
    const p1, 0x7f0602a3

    const p2, 0x7f0602a5

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->I(II)V

    return-void
.end method

.method public final V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->F:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    return-object v0
.end method

.method public final W0()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->F()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->i(Landroidx/fragment/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x10004

    const-string v2, "music_current_tab"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final X0()Lcom/samsung/android/app/music/main/v;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->B:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/main/v;

    return-object v0
.end method

.method public a1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->D()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/j;->a0()I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/j;->C(I)[J

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/util/i;->a(Landroid/app/Activity;[J)V

    return v2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public b1(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "tabLayout"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->J(Landroid/view/View;Z)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_4

    const-string p1, "viewPager"

    invoke-static {p1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->F()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/main/MyMusicTabFragment$f;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$f;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/a;->n(Landroid/database/DataSetObserver;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/p;->y()V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->J()V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;->B0()Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->a()Z

    move-result v2

    const/4 v3, 0x0

    .line 8
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    if-eqz v2, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh() selectedTabId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->B(I)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/k;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/k;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "key_tab_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->H:Ljava/lang/Integer;

    .line 3
    sget-object p1, Lcom/samsung/android/app/music/util/q;->a:Lcom/samsung/android/app/music/util/q;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->c(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/util/q;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->I:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/k;->N0(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->F()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STQV"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->i(Landroidx/fragment/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;->onResume()V

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/util/q;->a:Lcom/samsung/android/app/music/util/q;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->c(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/util/q;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->I:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->I:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->i(Landroidx/fragment/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->D:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->H:Ljava/lang/Integer;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "key_tab_id"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->C()Lcom/samsung/android/app/music/contents/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/a;->f()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->C()Lcom/samsung/android/app/music/contents/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/a;->i()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->G:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyToolTipHelper;->j()V

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/app/c;->i(Landroidx/fragment/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->F()I

    move-result v1

    const-string v2, "music_current_tab"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/k;->onStop()V

    return-void
.end method

.method public selectTab(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/k;->d()Landroidx/lifecycle/k$c;

    move-result-object p1

    sget-object v1, Landroidx/lifecycle/k$c;->e:Landroidx/lifecycle/k$c;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/k$c;->a(Landroidx/lifecycle/k$c;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->V0()Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$c;->B(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->T0(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "viewPager"

    invoke-static {p2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->T(IZ)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    invoke-direct {v0, p0, p0, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/k;Lcom/samsung/android/app/music/main/MyMusicTabFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/r;)V

    :goto_0
    return-void
.end method
