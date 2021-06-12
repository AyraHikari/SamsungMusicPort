.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field protected final mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

.field protected final mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field protected final mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field protected final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 25
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-void
.end method


# virtual methods
.method protected final getBaseUri()Landroid/net/Uri;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMode(I)I
.end method

.method protected final getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    return-object v0
.end method

.method protected final getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v0

    return-object v0
.end method

.method public abstract setMode(IIZ)Z
.end method
