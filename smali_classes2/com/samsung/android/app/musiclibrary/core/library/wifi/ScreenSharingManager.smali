.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:[J

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ScreenSharingManager"

.field private static sIsScreenSharingSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToMusicProviderIds(Landroid/content/Context;Ljava/util/ArrayList;)[J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)[J"
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->convertUriToLong(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 278
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMusicProviderIds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 280
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getSharedItemIds Can\'t get id from Music Provider. Please check provider."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    return-object p0

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getIdsInArray(Ljava/util/List;)[J

    move-result-object p0

    return-object p0
.end method

.method private static convertUriToLong(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 292
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertUrisToLongArray() id is null. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] uri was wrong."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getIdsInArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 301
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 302
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 304
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getScreenSharingMode(Landroid/content/Context;Z)I
    .locals 0

    .line 233
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSharedItemIds(Landroid/content/Context;Landroid/content/Intent;)[J
    .locals 2

    const-string v0, "android.intent.extra.INTENT"

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    .line 241
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getSharedItemIds NO EXTRA_INTENT"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    return-object p0

    :cond_0
    const-string v0, "share_music_from"

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "share_music_from_player"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getSharedItemUris(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 255
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->convertToMusicProviderIds(Landroid/content/Context;Ljava/util/ArrayList;)[J

    move-result-object p0

    return-object p0

    .line 252
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getSharedItemIds No shared items"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    return-object p0

    .line 246
    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSharedItemIds From "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    return-object p0
.end method

.method private static getSharedItemUris(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v0, "android.intent.extra.STREAM"

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-nez p0, :cond_0

    .line 264
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getSharedItemIds No shared item"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.STREAM"

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private static isScreenSharingConnected(Landroid/content/Context;)Z
    .locals 1

    .line 191
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isChromeCastConnected(Landroid/content/Context;)Z

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

.method public static isScreenSharingEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isScreenSharingSupported(Landroid/content/Context;)Z
    .locals 1

    .line 156
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->sIsScreenSharingSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "display"

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 158
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result p0

    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->sIsScreenSharingSupported:Ljava/lang/Boolean;

    .line 161
    :cond_1
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->sIsScreenSharingSupported:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSmartViewChromeCastSupported(Landroid/content/Context;)Z
    .locals 0

    .line 173
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 177
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->access$100()Z

    move-result p0

    return p0
.end method

.method public static isSmartViewVolumeControlSupported(Landroid/content/Context;)Z
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 169
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->access$000()Z

    move-result p0

    return p0
.end method

.method public static startWfdPickerDialog(Landroid/content/Context;Z)V
    .locals 4

    .line 201
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWfdPickerDialog isSupportDlna? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->g_:Z

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.smartmirroring"

    const-string v2, "com.samsung.android.smartmirroring.CastingDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 212
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "show_dialog_once"

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tag_write_if_success"

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "more_actions_screen_sharing_mode"

    .line 218
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getScreenSharingMode(Landroid/content/Context;Z)I

    move-result p1

    .line 217
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 221
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWfdPickerDialog PKG "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "more_actions_package_name"

    .line 222
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x34800000

    .line 223
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "startWfdPickerDialog ActivityNotFoundException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
