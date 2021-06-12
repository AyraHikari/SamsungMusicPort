.class public final Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand$Tag;
    }
.end annotation


# static fields
.field private static sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mServiceClass:Ljava/lang/Class;

    return-void
.end method

.method private addTag(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    const-string v0, "tag"

    .line 317
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    .line 122
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    return-object p0
.end method

.method private getExitIntent()Landroid/content/Intent;
    .locals 2

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.EXIT_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    .locals 2

    .line 129
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;Z)Landroid/content/Intent;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 366
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;ZJZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;ZJZ)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 351
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "command"

    const-string v2, "openList"

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "listQueryKey"

    .line 353
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "seek_position"

    .line 354
    invoke-virtual {v0, p1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "playing"

    .line 355
    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "list"

    .line 356
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p1, "listPosition"

    .line 357
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "dmr_device"

    .line 358
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_maintain_seek_position"

    .line 359
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    const/16 v0, 0x64

    .line 298
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 309
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->isOverO()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->addTag(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->addTag(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getTogglePauseIntent()Landroid/content/Intent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    .line 158
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static isOverO()Z
    .locals 2

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startCommand(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x64

    .line 395
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;ZI)V

    return-void
.end method

.method private startCommand(Ljava/lang/String;ZI)V
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 406
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "command"

    .line 407
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "force"

    .line 408
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->addTag(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 410
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method private startServiceInternal(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 163
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->isOverO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public enqueue([J)V
    .locals 3

    const-string v0, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 322
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "command"

    const-string v2, "enqueue"

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list"

    .line 324
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 325
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getExitIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public forward()V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getExitPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getExitIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getForwardDownPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.FF_DOWN"

    .line 243
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getForwardUpPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.FF_UP"

    .line 247
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getHideNotificationPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.HIDE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getNextPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    const/16 v0, 0x64

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getNextPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getNextPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.NEXT"

    .line 231
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getOpenListPendingIntent(ILjava/lang/String;[JILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 330
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 331
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    const/high16 p4, 0x8000000

    .line 332
    invoke-static {p3, p1, p2, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getPrevPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    const/16 v0, 0x64

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getPrevPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.PREV"

    .line 227
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getRewindDownPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.REW_DOWN"

    .line 235
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getRewindUpPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.REW_UP"

    .line 239
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getTogglePausePendingIntent()Landroid/app/PendingIntent;
    .locals 1

    const/16 v0, 0x64

    .line 211
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePausePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTogglePausePendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePauseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getToggleRepeatPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.TOGGLE_REPEAT"

    .line 256
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getToggleShufflePendingIntent(I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.TOGGLE_SHUFFLE"

    .line 251
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public openList(Ljava/lang/String;[JILjava/lang/String;Z)V
    .locals 0

    .line 337
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 338
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public openList(Ljava/lang/String;[JILjava/lang/String;ZJZ)V
    .locals 0

    .line 343
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;ZJZ)Landroid/content/Intent;

    move-result-object p1

    .line 345
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public openWidgetQueue([JI)V
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    .line 146
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list"

    .line 147
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p1, "listPosition"

    .line 148
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const-string v0, "pause"

    .line 375
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .locals 1

    const-string v0, "play"

    .line 371
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;)V

    return-void
.end method

.method public playNext()V
    .locals 2

    const-string v0, "next"

    const/4 v1, 0x1

    .line 383
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;Z)V

    return-void
.end method

.method public playPrevious()V
    .locals 2

    const-string v0, "previous"

    const/4 v1, 0x1

    .line 379
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;Z)V

    return-void
.end method

.method public reloadQueue()V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.RELOAD_QUEUE"

    .line 141
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public rewind()V
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public seek(J)V
    .locals 3

    const-string v0, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 273
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "command"

    const-string v2, "seek"

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seek_position"

    .line 275
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public setRepeat(I)V
    .locals 3

    const-string v0, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    .line 426
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x1

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra.value"

    .line 428
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public setShuffle(Z)V
    .locals 3

    const-string v0, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    .line 419
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x2

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra.value"

    .line 421
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public setUnionShuffleRepeat(I)V
    .locals 3

    const-string v0, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    .line 261
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x3

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra.value"

    .line 263
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public startCommand(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 387
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;ZI)V

    return-void
.end method

.method public startCommand(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;ZI)V

    return-void
.end method

.method public startPlayerService()V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 414
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 415
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleFavorite()V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

    .line 268
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 269
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public togglePause()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePauseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startServiceInternal(Landroid/content/Intent;)V

    return-void
.end method
