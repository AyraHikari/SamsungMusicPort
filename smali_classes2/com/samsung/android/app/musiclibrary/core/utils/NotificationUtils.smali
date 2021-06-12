.class public Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOADS_CHANNEL_ID:Ljava/lang/String; = "com.samsung.android.app.music.DOWNLOADS"

.field public static final MARKETING_CHANNEL_ID:Ljava/lang/String; = "com.samsung.android.app.music.MARKETING"

.field public static final NOTICES_CHANNEL_ID:Ljava/lang/String; = "com.samsung.android.app.music.NOTICES"

.field public static final PLAYBACK_CHANNEL_ID:Ljava/lang/String; = "com.samsung.android.app.music.PLAYBACK"

.field public static final PURCHASE_CHANNEL_ID:Ljava/lang/String; = "com.samsung.android.app.music.PURCHASE"

.field private static mNotiManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IZ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 40
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 41
    invoke-virtual {v0, p4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 42
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;->getManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static getManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;->mNotiManager:Landroid/app/NotificationManager;

    .line 28
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;->mNotiManager:Landroid/app/NotificationManager;

    return-object p0
.end method
