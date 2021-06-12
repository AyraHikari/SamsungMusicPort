.class public Landroid/support/v4/media/session/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaButtonReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static buildMediaButtonPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 1

    .line 228
    invoke-static {p0}, Landroid/support/v4/media/session/MediaButtonReceiver;->getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MediaButtonReceiver"

    const-string p1, "A unique media button receiver could not be found in the given context, so couldn\'t build a pending intent."

    .line 230
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_0
    invoke-static {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaButtonReceiver;->buildMediaButtonPendingIntent(Landroid/content/Context;Landroid/content/ComponentName;J)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static buildMediaButtonPendingIntent(Landroid/content/Context;Landroid/content/ComponentName;J)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "MediaButtonReceiver"

    const-string p1, "The component name of media button receiver should be provided."

    .line 262
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 265
    :cond_0
    invoke-static {p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat;->toKeyCode(J)I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "MediaButtonReceiver"

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot build a media button pending intent with the given action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 271
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.KEY_EVENT"

    .line 273
    new-instance p3, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    invoke-static {p0, v1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 287
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 288
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 290
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_1

    const-string p0, "MediaButtonReceiver"

    const-string v0, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null."

    .line 291
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 307
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 309
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 311
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 312
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 1 service that handles "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p0

    .line 201
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_3

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 107
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 112
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaButtonReceiver;->getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaButtonReceiver;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v0, "android.media.browse.MediaBrowserService"

    .line 118
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaButtonReceiver;->getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaButtonReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 123
    new-instance v2, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;

    invoke-direct {v2, p1, p2, v1}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 125
    new-instance p2, Landroid/support/v4/media/MediaBrowserCompat;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v2, v1}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v2, p2}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->setMediaBrowser(Landroid/support/v4/media/MediaBrowserCompat;)V

    .line 128
    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    return-void

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const-string p1, "MediaButtonReceiver"

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore unsupported intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
