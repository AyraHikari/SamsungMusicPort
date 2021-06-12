.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver$Actions;
    }
.end annotation


# static fields
.field private static final FOREGROUND_COMMAND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOREGROUND_EXTRA_CMD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private final mPlayerLoggers:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    const-string v1, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    const-string v2, "com.samsung.android.app.music.core.action.PREV"

    const-string v3, "com.samsung.android.app.music.core.action.NEXT"

    const-string v4, "com.samsung.android.app.music.core.action.FF_DOWN"

    const-string v5, "com.samsung.android.app.music.core.action.FF_UP"

    const-string v6, "com.samsung.android.app.music.core.action.REW_DOWN"

    const-string v7, "com.samsung.android.app.music.core.action.REW_UP"

    const-string v8, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    .line 70
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->FOREGROUND_COMMAND:Ljava/util/List;

    const-string v1, "play"

    const-string v2, "togglepause"

    const-string v3, "next"

    const-string v4, "previous"

    const-string v5, "fastforward"

    const-string v6, "fastforward_down"

    const-string v7, "fastforward_up"

    const-string v8, "rewind"

    const-string v9, "rewind_down"

    const-string v10, "rewind_up"

    const-string v11, "seek"

    .line 79
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->FOREGROUND_EXTRA_CMD:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/util/SparseArray;)V
    .locals 0
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 113
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    return-void
.end method

.method private getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    :goto_0
    return-object v0
.end method

.method private getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "tag"

    const/16 v1, 0x64

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez p1, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method private handleServiceCommand(Landroid/content/Intent;)Z
    .locals 11

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    const-string v1, "command"

    .line 136
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-static {v3, p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->d()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->togglePlay()V

    goto/16 :goto_1

    :cond_2
    const-string v1, "com.samsung.android.app.music.core.action.PREV"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v0, "force"

    .line 147
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 151
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->b()V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    move-result p1

    return p1

    :cond_4
    const-string v1, "com.samsung.android.app.music.core.action.NEXT"

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "force"

    .line 154
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 158
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->a()V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    move-result p1

    return p1

    :cond_6
    const-string v1, "com.samsung.android.app.music.core.action.FF_DOWN"

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x64

    if-eqz v1, :cond_7

    const-string v0, "tag"

    .line 161
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startForward(I)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "com.samsung.android.app.music.core.action.FF_UP"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "tag"

    .line 164
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForwardRewind(I)V

    goto/16 :goto_1

    :cond_8
    const-string v1, "com.samsung.android.app.music.core.action.REW_DOWN"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "tag"

    .line 167
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startRewind(I)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "com.samsung.android.app.music.core.action.REW_UP"

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "tag"

    .line 170
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForwardRewind(I)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "com.samsung.android.app.music.core.action.RELOAD_QUEUE"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->reloadQueue()V

    goto/16 :goto_1

    :cond_b
    const-string v1, "com.samsung.android.app.music.core.action.TOGGLE_REPEAT"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    move-result v0

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->b(I)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "com.samsung.android.app.music.core.action.TOGGLE_SHUFFLE"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    move-result v0

    .line 179
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->a(I)V

    goto/16 :goto_1

    :cond_d
    const-string v1, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "extra.list_mode_type"

    const/4 v1, -0x1

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "extra.value"

    .line 182
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setQueueMode(II)V

    goto :goto_1

    :cond_e
    const-string v1, "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->hasEmptySong()Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 188
    :cond_f
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->isFavorite()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->a(Z)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleFavorite()V

    goto :goto_1

    :cond_10
    const-string v1, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "list"

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    const-string v0, "listPosition"

    .line 192
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string p1, "SV"

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from widget."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    const-wide/16 v0, 0x0

    invoke-direct {v10, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;-><init>(ZJ)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 196
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->create(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    :cond_11
    :goto_1
    return v2
.end method

.method private hasEmptySong()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isForegroundCommand(Landroid/content/Intent;)Z
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "command"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->FOREGROUND_EXTRA_CMD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->FOREGROUND_COMMAND:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onStartCommand(Landroid/content/Intent;)Z
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->handleServiceCommand(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
