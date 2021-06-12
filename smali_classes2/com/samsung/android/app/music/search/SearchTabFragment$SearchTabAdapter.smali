.class Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchTabAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchTabFragment;

.field private b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    .line 644
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 641
    new-instance p1, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "SearchTabFragment"

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragmentByTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 756
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_7

    .line 758
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;-><init>()V

    goto/16 :goto_0

    .line 760
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/list/local/SearchFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 762
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_POPULAR_KEYWORDS:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;-><init>()V

    goto/16 :goto_0

    .line 764
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    sget-object p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 767
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_4
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 769
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_5
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 771
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a()Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 773
    new-instance v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 779
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$1;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 786
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    move-result-object v0

    :cond_7
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object v0, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "SearchTabFragment"

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragment. index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 686
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 687
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Lcom/samsung/android/app/music/search/SearchTabFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    .line 680
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 681
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 649
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 714
    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v0, "SearchTabFragment"

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", local : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", store : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    .line 716
    invoke-static {v2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    instance-of v0, p1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_search_type"

    .line 720
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 721
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    return v1

    .line 724
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_7

    :cond_1
    return v1

    .line 729
    :cond_2
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    if-eqz v0, :cond_3

    .line 730
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 733
    :cond_3
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    if-eqz v0, :cond_4

    .line 734
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 737
    :cond_4
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    if-eqz v0, :cond_5

    .line 738
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_POPULAR_KEYWORDS:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 741
    :cond_5
    instance-of v0, p1, Lcom/samsung/android/app/music/list/local/SearchFragment;

    if-eqz v0, :cond_6

    .line 742
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 745
    :cond_6
    instance-of p1, p1, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    if-eqz p1, :cond_7

    .line 746
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 659
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    .line 660
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->d(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b00b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->d(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0517

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 657
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->d(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b01f2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 695
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 696
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object p1, p1, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    if-eq p1, p3, :cond_1

    .line 697
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object p1, p1, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    .line 698
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/Fragment;Z)V

    .line 699
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    move-object v1, p3

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    .line 700
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iput p2, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->b:I

    .line 701
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object p2, p2, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    instance-of p2, p2, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    if-eqz p2, :cond_0

    instance-of p1, p1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    if-eqz p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object p1, p1, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    check-cast p1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->s_()V

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object p2, p2, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/Fragment;)V

    .line 707
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->b:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;

    iget-object p2, p2, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/Fragment;Z)V

    const-string p1, "SearchTabFragment"

    .line 708
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPrimaryItem : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
