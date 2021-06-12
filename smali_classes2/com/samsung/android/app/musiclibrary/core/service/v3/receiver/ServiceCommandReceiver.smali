.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver$Actions;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver$Companion;

.field private static final FOREGROUND_COMMAND:[Ljava/lang/String;

.field private static final FOREGROUND_EXTRA_CMD:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final loggers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final playerCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver$Companion;

    const-string v2, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    const-string v3, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    const-string v4, "com.samsung.android.app.music.core.action.PREV"

    const-string v5, "com.samsung.android.app.music.core.action.NEXT"

    const-string v6, "com.samsung.android.app.music.core.action.FF_DOWN"

    const-string v7, "com.samsung.android.app.music.core.action.FF_UP"

    const-string v8, "com.samsung.android.app.music.core.action.REW_DOWN"

    const-string v9, "com.samsung.android.app.music.core.action.REW_UP"

    const-string v10, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    .line 194
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->FOREGROUND_COMMAND:[Ljava/lang/String;

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

    .line 206
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->FOREGROUND_EXTRA_CMD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerCenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->playerCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->loggers:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;Landroid/util/SparseArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 50
    check-cast p2, Landroid/util/SparseArray;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;Landroid/util/SparseArray;)V

    return-void
.end method

.method private final getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->loggers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "tag"

    const/16 v1, 0x64

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->loggers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    return-object p1
.end method

.method private final handleServiceCommand(Landroid/content/Intent;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->isSupposedToBePlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->d()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 103
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->togglePlay()V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.samsung.android.app.music.core.action.RELOAD_QUEUE"

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.samsung.android.app.music.core.customAction.RELOAD_QUEUE"

    const/4 v2, 0x2

    .line 142
    invoke-static {v1, v0, v4, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$DefaultImpls;->sendCustom$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "com.samsung.android.app.music.core.action.PREV"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->b()V

    .line 107
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v1

    const/4 v2, 0x1

    .line 108
    invoke-static {v1, v5, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl$DefaultImpls;->prev$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;ZILjava/lang/Object;)V

    const-string v2, "force"

    .line 109
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->play()V

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "com.samsung.android.app.music.core.action.NEXT"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->a()V

    .line 116
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->next()V

    const-string v2, "force"

    .line 118
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->play()V

    goto :goto_1

    :sswitch_4
    const-string v3, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    const-string v3, "command"

    .line 92
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;

    const-string v5, "cmd"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    goto :goto_1

    :sswitch_5
    const-string v3, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "list"

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    const-string v2, "listPosition"

    .line 171
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v0, "SV"

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from widget."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v0, "list"

    .line 175
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x95

    const/16 v16, 0x0

    .line 173
    invoke-static/range {v6 .. v16}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$DefaultImpls;->open$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;ILjava/lang/Object;)V

    goto :goto_1

    :sswitch_6
    const-string v0, "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x366a87c3 -> :sswitch_6
        0x698768d -> :sswitch_5
        0x1349f242 -> :sswitch_4
        0x2a09bed2 -> :sswitch_3
        0x2a0ad612 -> :sswitch_2
        0x559b8faa -> :sswitch_1
        0x79d75e0a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final isForegroundCommand(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    .line 79
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "command"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->FOREGROUND_EXTRA_CMD:[Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 83
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->FOREGROUND_COMMAND:[Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onStartCommand(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->playerCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->handleServiceCommand(Landroid/content/Intent;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    const/4 p1, 0x1

    return p1
.end method
