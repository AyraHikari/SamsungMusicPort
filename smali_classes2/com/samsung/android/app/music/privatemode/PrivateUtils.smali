.class public final Lcom/samsung/android/app/music/privatemode/PrivateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 6

    .line 92
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v0, "count(*)"

    .line 93
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_music=1 AND is_secretbox=0 AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 97
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 101
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 102
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 107
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static a(Landroid/content/Context;[J)I
    .locals 10

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 160
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v2, "bucket_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "_id"

    .line 162
    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 160
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 163
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "bucket_id"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN ("

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2c

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x29

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_3

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_3
    :try_start_2
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v2, "count(*)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 183
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    .line 185
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 186
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_4

    .line 190
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return p1

    :catchall_0
    move-exception p1

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v1

    :catchall_3
    move-exception p0

    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;[JLjava/lang/String;ZZ)V
    .locals 3

    const-string v0, "PrivateMode"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateUtils - starting isMoveToPrivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1, p3, p4}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->b(Landroid/support/v4/app/FragmentActivity;[JZZ)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->b(Landroid/support/v4/app/FragmentActivity;[JLjava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;[JZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/support/v4/app/FragmentActivity;[JLjava/lang/String;ZZ)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 3

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "confirm_popup_move_to_private"

    goto :goto_0

    :cond_0
    const-string v0, "confirm_popup_remove_from_private"

    .line 134
    :goto_0
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "PrivateMode"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateDialogUtils - isNeedConfirm()  moveToPrivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " confirmPopup : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static a([J)Z
    .locals 8

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v0

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v1

    .line 122
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-wide v6, p0, v5

    if-eqz v0, :cond_0

    cmp-long v6, v1, v6

    if-nez v6, :cond_0

    const-string p0, "PrivateMode"

    const-string v0, "Has a now playing track!!"

    .line 124
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private static b(Landroid/support/v4/app/FragmentActivity;[JLjava/lang/String;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 74
    invoke-static {p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 73
    invoke-static {p2, p1, p3, p4}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(Landroid/content/Context;[JLjava/lang/String;Z)Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 75
    invoke-static {p0}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/content/Context;)I

    move-result p3

    if-lez p3, :cond_1

    if-nez p4, :cond_1

    .line 76
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "list_items"

    .line 78
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p1, "is_folder"

    .line 79
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x32a

    .line 81
    invoke-virtual {p0, p2, p1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2, p4}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(Landroid/content/Context;[JLjava/lang/String;Z)Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    :goto_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/FragmentActivity;[JZZ)V
    .locals 0

    .line 66
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->a([JZZ)Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
