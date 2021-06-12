.class public final Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->a:Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;[JLandroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->a:Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;->a(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    return-void
.end method

.method public static final b(Landroid/app/Activity;[JLandroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->a:Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;->b(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->b:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->b:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    :goto_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 30
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 34
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    const p1, 0x7f040008

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->setContentView(I)V

    const/16 p1, 0x11

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "intent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    sget-object v2, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;

    const-string v3, "key_checked_ids"

    .line 43
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    const-string v4, "getLongArray(KEY_CHECKED_IDS)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "key_add_to_favorite"

    .line 44
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "key_playlist_id"

    const/4 v6, 0x0

    .line 45
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "is_selected_all"

    const/4 v7, 0x0

    .line 46
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;->a([JZLjava/lang/String;Z)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "supportFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f13012a

    .line 48
    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 108
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    const p1, 0x7f0b007d

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f130073

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 62
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 63
    new-instance p1, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->b:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ATPL"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const-string v0, "add_to_playlist"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->b:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method
