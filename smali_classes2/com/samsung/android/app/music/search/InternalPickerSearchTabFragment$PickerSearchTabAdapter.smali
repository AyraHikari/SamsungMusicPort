.class Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerSearchTabAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

.field private b:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 483
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 479
    new-instance p1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->b:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "InternalPickerSearchTabFragment"

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragmentByTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 575
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 577
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-static {}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->c()Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 580
    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;-><init>()V

    goto :goto_0

    .line 582
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 583
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->b(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "InternalPickerSearchTabFragment"

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragment. index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    .line 519
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 520
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 521
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

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

    .line 488
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 545
    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v0, "InternalPickerSearchTabFragment"

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", local : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", store : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 547
    invoke-static {v2}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 549
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 550
    invoke-static {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 553
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    if-eqz v0, :cond_1

    .line 554
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 555
    invoke-static {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 558
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    if-eqz v0, :cond_2

    .line 559
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 560
    invoke-static {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 563
    :cond_2
    instance-of p1, p1, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    if-eqz p1, :cond_3

    .line 564
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 565
    invoke-static {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 498
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    .line 499
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b00b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0517

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 496
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Landroid/content/Context;

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
    .locals 1

    .line 535
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 536
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->b:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;

    iget-object p1, p1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    if-eq p1, p3, :cond_0

    .line 537
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->b:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;

    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;->a:Landroid/support/v4/app/Fragment;

    .line 538
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->b:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;

    iput p2, p1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter$CurrentPageInfo;->b:I

    const-string p1, "InternalPickerSearchTabFragment"

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPrimaryItem : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
