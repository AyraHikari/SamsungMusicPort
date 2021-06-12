.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Notification$Builder;)V
    .locals 2

    .line 54
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->stat_notify_music:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$mipmap;->music_icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private a(Landroid/app/Notification$Builder;Z)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->do_not_show_again:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.music.intent.action.HUN_DONT_SHOW_BUTTON"

    .line 91
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    invoke-virtual {p1, v0, p2, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->cancel:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.music.intent.action.HUN_CANCEL_BUTTON"

    .line 94
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 93
    invoke-virtual {p1, v0, p2, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->download:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.music.intent.action.HUN_DOWNLOAD_BUTTON"

    .line 96
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v0, p2, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private b(Landroid/app/Notification$Builder;)V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_quick_panel_notification_galaxy_download:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_quick_panel_notification_music_download:I

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 66
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private b(Landroid/app/Notification$Builder;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    const-string v0, "notiCount"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->b(Ljava/lang/String;I)I

    move-result p2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    const-string v1, "notiCount"

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a(Ljava/lang/String;I)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string p2, "com.samsung.android.app.music.intent.action.HUN_DISMISS"

    .line 104
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 p2, 0x3

    .line 105
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 106
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Notification$Builder;)V
    .locals 2

    .line 70
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->hun_title_for_jpn:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->hun_title:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->hun_sub_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private d(Landroid/app/Notification$Builder;)V
    .locals 3

    .line 78
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->brand_name_for_jpn:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->brand_name:I

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 83
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.substName"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->hun_brand_name:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p1, Landroid/app/Notification;->color:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    const-string v1, "notification"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 43
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Landroid/app/Notification$Builder;)V

    .line 45
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->b(Landroid/app/Notification$Builder;)V

    .line 46
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->c(Landroid/app/Notification$Builder;)V

    .line 47
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->d(Landroid/app/Notification$Builder;)V

    .line 48
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->b(Landroid/app/Notification$Builder;Z)V

    .line 49
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Landroid/app/Notification$Builder;Z)V

    .line 50
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const v1, 0x7010005

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
