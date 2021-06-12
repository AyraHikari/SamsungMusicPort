.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/app/NotificationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/app/PendingIntent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/app/PendingIntent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v0, "notification"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c:Landroid/app/PendingIntent;

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->d:Landroid/app/PendingIntent;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->e:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-wide/16 v0, -0xe

    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b030b

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x100004

    const/4 v3, 0x0

    .line 71
    invoke-static {p1, v2, v0, v1, v3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 93
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 100
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f02036b

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b0300

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v2, 0x7f130032

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object v0
.end method

.method public a(I)V
    .locals 6

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 117
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f02036b

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0010

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 125
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v1, 0x7f130032

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b0438

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 137
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v4, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v1, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v2, 0x7f02036b

    .line 141
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 142
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 145
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 147
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v1, 0x7f130032

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 153
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b010f

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 158
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f02036b

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 163
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 164
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 166
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const p2, 0x7f130032

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueNotifier | deleteOnDownloadingItem()"

    .line 172
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v1, 0x7f130032

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "SV"

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueNotifier | clear() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SV"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueNotifier | addCompletedItem() - trackTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ", "

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->e:Ljava/util/List;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 185
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v2, 0x7f02036b

    .line 189
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 190
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 191
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 192
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->d:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    .line 194
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const p1, 0x7f130030

    const-string v0, "SV"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueNotifier | addCompletedItem() - id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueNotifier | temporaryError()"

    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 206
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f02036b

    .line 210
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b0395

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v2, 0x7f130031

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueNotifier | exceededRegisteredDevices()"

    .line 219
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 223
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f02036b

    .line 227
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b03d5

    .line 230
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 231
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v2, 0x7f130031

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueNotifier | invalidDateTime()"

    .line 238
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 242
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.music.DOWNLOADS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f02036b

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    const v2, 0x7f0b03cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 249
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->d(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 252
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b:Landroid/app/NotificationManager;

    const v2, 0x7f130031

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
