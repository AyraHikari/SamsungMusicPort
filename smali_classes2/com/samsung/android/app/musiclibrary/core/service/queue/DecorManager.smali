.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# instance fields
.field private final mBaseDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private mLastDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

.field private final mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 33
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mBaseDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    return-void
.end method

.method private isSameShuffleValue(I)Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method createQueueDecors(I)V
    .locals 10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 38
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mBaseDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 41
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 43
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mLastDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz p1, :cond_2

    .line 45
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mLastDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    goto :goto_1

    .line 50
    :cond_0
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mBaseDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v6, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz p1, :cond_1

    .line 54
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v2, v6, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 56
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mPlayerQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 64
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mLastDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    :cond_2
    :goto_1
    return-void
.end method

.method disableMode()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method getLastDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->mLastDecor:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    return-object v0
.end method

.method loadSavedValues()V
    .locals 0

    return-void
.end method

.method setMode(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 100
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->isSameShuffleValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->createQueueDecors(I)V

    :cond_1
    return-void
.end method

.method setPlayMode(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->isSameShuffleValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->createQueueDecors(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->isSameShuffleValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 130
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->createQueueDecors(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
