.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;,
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private final c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onPageChangeListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 238
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onPageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onPageChangeListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onPageChangeListener$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "Ui"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteActivity | onActivityResult() - requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "key_searched_my_favorite_music_data"

    .line 211
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 212
    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-static {p2}, Landroid/arch/lifecycle/ViewModelProviders;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p2

    const-class p3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {p2, p3}, Landroid/arch/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p2

    const-string p3, "ViewModelProviders.of(th\u2026iteViewModel::class.java)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    const-string p3, "data"

    .line 213
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const p3, 0x7f0b044c

    goto :goto_0

    :cond_0
    const p3, 0x7f0b044b

    .line 218
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c()I

    move-result p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(IZ)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040239

    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->setContentView(I)V

    const-string v0, "Ui"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteActivity | onCreate() - savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f0b037b

    .line 61
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 64
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "supportFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/support/v4/app/Fragment;

    .line 66
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;

    invoke-direct {v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;-><init>()V

    check-cast v4, Landroid/support/v4/app/Fragment;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 67
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

    invoke-direct {v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;-><init>()V

    check-cast v4, Landroid/support/v4/app/Fragment;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    .line 68
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListTrackFragment;

    invoke-direct {v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListTrackFragment;-><init>()V

    check-cast v4, Landroid/support/v4/app/Fragment;

    aput-object v4, v3, v1

    .line 64
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f13007c

    .line 71
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 72
    move-object v3, v0

    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 74
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onPageChangeListener$1;

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string v0, "findViewById<MusicViewPa\u2026ChangeListener)\n        }"

    .line 71
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const v0, 0x7f130558

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v1, :cond_1

    const-string v2, "viewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 80
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026iteViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    const v1, 0x7f1301d4

    .line 81
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_2

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->e()V

    const-string p1, "progressBar"

    .line 85
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f130559

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f13055a

    .line 89
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f13055b

    .line 90
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f0b0209

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "prevButton"

    .line 93
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0405

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v6, "nextButton"

    .line 94
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0149

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v6, "saveButton"

    .line 95
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b01de

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$4;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$4;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$6;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$6;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$updateButton$1;

    invoke-direct {v4, v0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$updateButton$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$7;

    invoke-direct {v3, p0, v0, v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$7;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p1, v2, v3}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->f()Landroid/util/SparseArray;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v5, v3, :cond_3

    .line 287
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/arch/lifecycle/LiveData;

    .line 152
    new-instance v7, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;

    invoke-direct {v7, p0, v0, v4, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    check-cast v7, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v6, v2, v7}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$9;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;)V

    check-cast v0, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p1, v2, v0}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Ui"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteActivity | onCreateOptionsMenu() - menu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f140034

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 176
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "Ui"

    const-string v1, "SetFavorite_SetFavoriteActivity | onDestroy()"

    .line 168
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onPageChangeListener$1;

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Ui"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteActivity | onOptionsItemSelected() - item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305f3

    if-eq v0, v1, :cond_0

    .line 200
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "SetFavorite_SetFavoriteResetDialogFragment |"

    .line 195
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment;-><init>()V

    check-cast v1, Landroid/support/v4/app/Fragment;

    :goto_0
    if-eqz v1, :cond_3

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .line 197
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 196
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v4.app.DialogFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const-string v1, "Ui"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetFavorite_SetFavoriteActivity | onPrepareOptionsMenu() - hasLike: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f1305f3

    .line 184
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v1, "menu.findItem(R.id.set_favorite_reset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
