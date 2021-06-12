.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "PurchasedTracksActivity"


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;

    const-string v0, "PurchasedTracksActivity"

    .line 167
    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04019c

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->setContentView(I)V

    const v0, 0x7f130073

    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 46
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 49
    instance-of v0, p0, Landroid/support/v7/app/AppCompatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const v1, 0x7f0b0208

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_1
    const v0, 0x7f13007c

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const/4 v2, 0x2

    .line 56
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 57
    new-instance v2, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "supportFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;Landroid/support/v4/app/FragmentManager;)V

    check-cast v2, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    if-eqz p1, :cond_2

    const-string v2, "key_tab_id"

    .line 62
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "com.sec.android.app.music.PURCHASED_TRACK_TAB_ID"

    .line 68
    sget-object v3, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v3

    .line 65
    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 60
    :goto_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 73
    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;)V

    check-cast p1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string p1, "findViewById<MusicViewPa\u2026tenerAdapter())\n        }"

    .line 55
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const p1, 0x7f130473

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v1, :cond_3

    const-string v2, "viewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const-string v1, "findViewById<MusicSubTab\u2026ager(viewPager)\n        }"

    .line 76
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.music.PURCHASED_TRACK_TAB_ID"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v2, :cond_0

    const-string v3, "viewPager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_tab_id"

    .line 36
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v1, :cond_0

    const-string v2, "viewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-nez p1, :cond_0

    const-string v0, "subTab"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setEnabled(Z)V

    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-nez p1, :cond_0

    const-string v0, "subTab"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setEnabled(Z)V

    return-void
.end method
