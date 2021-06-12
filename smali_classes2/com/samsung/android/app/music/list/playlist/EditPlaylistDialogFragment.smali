.class public final Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
.super Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;,
        Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;,
        Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;,
        Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;,
        Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;

.field private static final KEY_UPDATE_ACTION_BAR_TITLE:Ljava/lang/String; = "key_update_title"

.field public static final TAG:Ljava/lang/String; = "Playlist-EditPlaylist"

.field private static final UNDEFINED:J = -0x1L


# instance fields
.field private impl:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;

.field private screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(J)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
    .locals 6

    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-wide v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;JZILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(JZ)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;->newInstance(JZ)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public editPlaylistName(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 2

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isPlaylistNameExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    const-wide/16 v0, -0x1

    .line 48
    invoke-interface {p2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->impl:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;

    if-nez v0, :cond_2

    const-string v1, "impl"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;->editPlaylistName(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V

    :goto_0
    return-void
.end method

.method protected isValidPlaylistName(Ljava/lang/String;)Z
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isValidPlaylistName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getInitPlaylistName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const v2, 0x7f0b01ad

    .line 33
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->setDialogTitleResId(I)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->setPositiveButtonResId(I)V

    const-string v2, "context"

    .line 35
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->setInitPlaylistName(Ljava/lang/String;)V

    .line 37
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_3

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isSyncable(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;-><init>(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;)V

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;

    goto :goto_0

    .line 40
    :cond_3
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;-><init>(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;)V

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;

    .line 37
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->impl:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    return-void
.end method

.method protected onEditCanceled()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 76
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1167"

    .line 75
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onEditCompleted(Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->K()V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v1, "key_update_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v1, "targetFragment!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 62
    :cond_4
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getInitPlaylistName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute(Ljava/lang/Long;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->screenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz p1, :cond_6

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    .line 66
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "1168"

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getEditPlaylistName()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p2, p1, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
