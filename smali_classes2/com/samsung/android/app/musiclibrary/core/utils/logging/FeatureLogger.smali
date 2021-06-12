.class public Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final DEBUG:Z = false

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final MULTI_ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final MULTI_STATUS_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

.field private static final STATUS_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field private static final SUPPORT_FW_FEATURE_LOGGING:Z

.field public static final VALUE:Ljava/lang/String; = "value"

.field private static sAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->a_:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertListItemIdToString(J)Ljava/lang/String;
    .locals 0

    long-to-int p0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "My playlists"

    goto :goto_0

    :pswitch_0
    const-string p0, "Favourite tracks"

    goto :goto_0

    :pswitch_1
    const-string p0, "Most played"

    goto :goto_0

    :pswitch_2
    const-string p0, "Recently played"

    goto :goto_0

    :pswitch_3
    const-string p0, "Recently added"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertListTypeToMostPlayedLoggingString(I)Ljava/lang/String;
    .locals 1

    const v0, 0x10003

    if-ne p0, v0, :cond_0

    const-string p0, "Most played artist"

    goto :goto_0

    :cond_0
    const v0, 0x10002

    if-ne p0, v0, :cond_1

    const-string p0, "Most played album"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static convertListTypeToTabString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ListType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_0
    const-string p0, "Tracks"

    goto :goto_0

    :sswitch_1
    const-string p0, "Composers"

    goto :goto_0

    :sswitch_2
    const-string p0, "Folders"

    goto :goto_0

    :sswitch_3
    const-string p0, "Genres"

    goto :goto_0

    :sswitch_4
    const-string p0, "Playlists"

    goto :goto_0

    :sswitch_5
    const-string p0, "Artists"

    goto :goto_0

    :sswitch_6
    const-string p0, "Albums"

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_6
        0x10003 -> :sswitch_5
        0x10004 -> :sswitch_4
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_2
        0x10008 -> :sswitch_1
        0x100002 -> :sswitch_6
        0x100003 -> :sswitch_5
        0x100004 -> :sswitch_4
        0x100006 -> :sswitch_3
        0x100007 -> :sswitch_2
        0x100008 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 78
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 83
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "extra"

    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "value"

    .line 89
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.providers.context"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 93
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->printLog(Landroid/content/ContentValues;)V

    return-void
.end method

.method public static insertMultiLog(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 6

    .line 106
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "app_id"

    .line 111
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context"

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string v1, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    .line 120
    aget-object v1, p1, v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->printLog([Landroid/content/ContentValues;)V

    return-void
.end method

.method public static loggingMusicStatus(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 0

    .line 285
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->updateStatusLog(Landroid/content/Context;[Landroid/content/ContentValues;)V

    return-void
.end method

.method public static loggingPlayFromLibrary(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "PLTB"

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    .line 232
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListTypeToTabString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x100004

    if-ne v1, p1, :cond_1

    .line 238
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 p1, -0x1

    .line 243
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "PLPL"

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    .line 245
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListItemIdToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, -0xb

    cmp-long p1, v1, p1

    if-nez p1, :cond_1

    .line 249
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "feature"

    const-string v1, "CTFA"

    .line 250
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra"

    .line 251
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertMultiLog(Landroid/content/Context;[Landroid/content/ContentValues;)V

    return-void
.end method

.method public static loggingPlayFromShortCut(Landroid/content/Context;JI)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "PLCV"

    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    const-string v3, "Playlists"

    .line 267
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "PLCV"

    .line 271
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    .line 272
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListItemIdToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, -0xb

    cmp-long p1, v1, p1

    if-nez p1, :cond_1

    .line 276
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "feature"

    const-string v1, "CTFA"

    .line 277
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra"

    .line 278
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertMultiLog(Landroid/content/Context;[Landroid/content/ContentValues;)V

    return-void
.end method

.method private static printLog(Landroid/content/ContentValues;)V
    .locals 0

    return-void
.end method

.method private static printLog([Landroid/content/ContentValues;)V
    .locals 0

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    .line 55
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    return-void
.end method

.method private static updateStatusLog(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 6

    .line 134
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "app_id"

    .line 139
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context"

    .line 142
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string v1, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    .line 147
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    .line 148
    aget-object v1, p1, v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->printLog([Landroid/content/ContentValues;)V

    return-void
.end method
