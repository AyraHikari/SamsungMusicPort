.class public final Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KNOX_MOVE_IN_BACKGROUND:Z = false

.field private static final MAXIMUM_FILES_FOR_MOVETOKNOX:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    if-eqz p0, :cond_1

    .line 287
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAfwForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_OWNER:I

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 295
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_1
    return p2
.end method

.method private static getKnoxInfoForAppBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "KnoxMode"

    const-string v0, "Knox is not supported!!!"

    .line 157
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;[J)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "_data"

    .line 173
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "_id"

    .line 175
    invoke-static {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 174
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    :try_start_1
    const-string p1, "KnoxMode"

    const-string p2, "requestMoveToKnox fail cause c is null. This should not happened. Please check input list and provider"

    .line 178
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 183
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 186
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    .line 194
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method private static isAfwForBYOD(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "user"

    .line 244
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 246
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 247
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 248
    sget-object v4, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v1, :cond_1

    .line 250
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, v3, :cond_1

    return v3

    :catch_0
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private static isAfwForCL(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "device_policy"

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_1

    .line 268
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 271
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAndroidForWorkMode(Landroid/content/Context;)Z
    .locals 1

    .line 282
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAfwForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAfwForCL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEnableMoveToKnox(Landroid/content/Context;)Z
    .locals 3

    .line 92
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "KnoxMode"

    const-string v2, "isEnableMoveToKnox() - knox2.0 is enable!"

    .line 97
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportKnoxMove(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KnoxMode"

    const-string v2, "isEnableMoveToKnox() - knox2.0 container is installed!"

    .line 100
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "KnoxMode"

    const-string v0, "isEnableMoveToKnox() - knox2.0 mode is on!"

    .line 103
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isEnalbeMoveToPersonal(Landroid/content/Context;)Z
    .locals 3

    .line 117
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "KnoxMode"

    const-string v2, "isEnalbeMoveToPsersonal() - knox2.0 is enable!"

    .line 121
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportKnoxMove(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KnoxMode"

    const-string v2, "isEnalbeMoveToPsersonal() - knox2.0 container is installed!"

    .line 124
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "KnoxMode"

    const-string v0, "isEnalbeMoveToPsersonal() - knox2.0 mode is on!"

    .line 127
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isKnoxModeOn(Landroid/content/Context;)Z
    .locals 3

    .line 140
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getKnoxInfoForAppBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "true"

    const-string v2, "isKnoxMode"

    .line 144
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isSupportKnoxMove(Landroid/content/Context;)Z
    .locals 2

    .line 148
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getKnoxInfoForAppBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "true"

    const-string v1, "isSupportMoveTo"

    .line 149
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSecureFolder(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "isSupportSecureFolder"

    .line 233
    const p0, 0x0

    if-eqz p0, :cond_0

    const-string v0, "true"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static moveInternal(Landroid/content/Context;Landroid/net/Uri;[JII)V
    .locals 2
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 202
    array-length v0, p2

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    const-string p1, "KnoxMode"

    const-string p2, "moveInternal() The maximum number of files that can be moved at one time 500"

    .line 203
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    .line 206
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    invoke-static {p0, p1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;[J)Ljava/util/ArrayList;

    move-result-object p1

    .line 216
    new-instance p2, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportSecureFolder(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 220
    sget p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    invoke-virtual {p2, p0, p1, p1, p3}, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v0

    goto :goto_0

    .line 223
    :cond_2
    sget p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    invoke-virtual {p2, p0, p1, p1}, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v0

    :goto_0
    const-string p0, "KnoxMode"

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RequestApp : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", path : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , threadId : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " , containerID : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startMoveFiles(Landroid/app/Activity;Landroid/net/Uri;[JII)V
    .locals 2
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 56
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "KnoxMode"

    const-string p1, "startMoveFiles() - Activity is null"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 65
    array-length v0, p2

    if-nez v0, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "KnoxMode"

    const-string v1, "knox2.0 - startMoveFiles!"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->moveInternal(Landroid/content/Context;Landroid/net/Uri;[JII)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "KnoxMode"

    const-string p1, "startMoveFiles() - items are empty"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
