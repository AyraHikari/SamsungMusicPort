.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final REMOTE_TAG:I = 0x65

.field private static final REQUEST_CODE:I = 0x7010002

.field private static final REQUEST_CODE_FOR_KNOX:I = 0x7010003

.field private static final SUB_TAG:Ljava/lang/String; = "Notification: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsKnoxMode:Ljava/lang/Boolean;

.field private mIsNotificationVisible:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

.field private mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    .line 98
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getLaunchIntentSet()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private ensureNotification()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    const/4 v1, 0x1

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;->getLaunchIntentMusic(ZI)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private getNotificationId()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7010003

    goto :goto_0

    :cond_0
    const v0, 0x7010002

    :goto_0
    return v0
.end method

.method private isKnoxMode(Landroid/content/Context;)Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsKnoxMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 270
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsKnoxMode:Ljava/lang/Boolean;

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsKnoxMode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method final isNotificationVisible()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    return v0
.end method

.method final obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 105
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 109
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 110
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const-string v2, "com.samsung.android.app.music.PLAYBACK"

    .line 111
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 115
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 116
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    .line 117
    invoke-interface {v2, p1, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_2

    .line 124
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p3, "android.mediaSession"

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    .line 124
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 132
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method final registerNotification()V
    .locals 3

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->ensureNotification()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getNotificationId()I

    move-result v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->registerNotification(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SV-MediaCenter"

    const-string v1, "Notification: registerNotification : IllegalStateException occurred"

    .line 159
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method final setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->ensureNotification()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 193
    iput v0, p1, Landroid/app/Notification;->visibility:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 196
    iput v0, p1, Landroid/app/Notification;->visibility:I

    :goto_0
    return-void
.end method

.method final unregisterNotification()V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "Notification: unregisterNotification()"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "Notification:   - but already hidden state."

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->unregisterNotification(Z)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getNotificationId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    return-void
.end method

.method final updateBlurBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;FJJ)V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationUpdaterDelegate:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;->getBlurBackground(Landroid/content/Context;FJJLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method final updateNotification()V
    .locals 4

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->ensureNotification()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z

    if-nez v0, :cond_1

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "Notification: updateNotification() but it is hidden state."

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->getNotificationId()I

    move-result v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->mIsNotificationVisible:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-SV-MediaCenter"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification: updateNotificationAlbumArt but fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
