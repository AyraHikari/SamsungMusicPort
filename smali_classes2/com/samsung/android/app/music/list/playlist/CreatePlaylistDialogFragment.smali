.class public final Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;
.super Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;,
        Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;,
        Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;,
        Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;,
        Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "Playlist-CreatePlaylist"

.field private static final UNDEFINED:J = -0x1L


# instance fields
.field private impl:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;

.field private screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public editPlaylistName(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 3

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->impl:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;

    if-nez v0, :cond_0

    const-string v1, "impl"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "key_ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1, p2}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;->createPlaylist(Ljava/lang/String;[JLcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->createDefaultPlaylistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setInitPlaylistName(Ljava/lang/String;)V

    const v0, 0x7f0b00eb

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setPositiveButtonResId(I)V

    const v0, 0x7f0b019d

    .line 44
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setDialogTitleResId(I)V

    .line 45
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_4

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    const p1, 0x7f0b00ed

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setDialogDescriptionResId(I)V

    goto :goto_0

    .line 47
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.network.NetworkManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const p1, 0x7f0b00ec

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setDialogDescriptionResId(I)V

    .line 55
    :cond_4
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_5

    new-instance p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;-><init>(Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;)V

    :goto_1
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    :goto_2
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->impl:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-nez v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    return-void
.end method

.method protected onEditCanceled()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 99
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2655"

    .line 98
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onEditCompleted(Ljava/lang/String;J)V
    .locals 7

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getTargetRequestCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getTargetRequestCode()I

    move-result v2

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v4, "context!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x100004

    .line 85
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 82
    invoke-static {v3, v4, v5, p1, v6}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_playlist_id"

    .line 89
    invoke-virtual {v3, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "key_title"

    .line 90
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getTargetRequestCode()I

    move-result v2

    .line 73
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "key_playlist_id"

    .line 74
    invoke-virtual {v3, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "key_title"

    .line 75
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7bf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
