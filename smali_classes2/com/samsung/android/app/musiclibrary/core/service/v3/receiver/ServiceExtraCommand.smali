.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;

.field private static final executorService$delegate:Lkotlin/Lazy;

.field private static final keyRunnable$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "executorService"

    const-string v4, "getExecutorService()Ljava/util/concurrent/ExecutorService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "keyRunnable"

    const-string v4, "getKeyRunnable()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 31
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;

    .line 109
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$executorService$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$executorService$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->executorService$delegate:Lkotlin/Lazy;

    .line 110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->keyRunnable$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final executeKeyEvent(I)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->getKeyRunnable()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;->setKeyEvent(I)V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->getKeyRunnable()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->executorService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private final getKeyRunnable()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->keyRunnable$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;

    return-object v0
.end method

.method public static synthetic handleExtraCommand$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 34
    check-cast p4, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    return-void
.end method

.method private final openQueueFromIntent(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "listQueryKey"

    .line 96
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "list"

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    const-string p1, "listPosition"

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string p1, "dmr_device"

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "is_maintain_seek_position"

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string p1, "seek_position"

    const-wide/16 v1, 0x0

    .line 101
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string p1, "playing"

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public final handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 9

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "i"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p2, "pause"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p4, :cond_0

    .line 52
    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->d()V

    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->pause()V

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "stop"

    .line 36
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 82
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->pause()V

    goto/16 :goto_1

    :sswitch_2
    const-string p4, "seek"

    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "seek_position"

    const-wide/16 v0, 0x0

    .line 72
    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p2

    .line 73
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->seek(J)V

    goto/16 :goto_1

    :sswitch_3
    const-string p2, "play"

    .line 36
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p4, :cond_1

    .line 48
    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 49
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->play()V

    goto/16 :goto_1

    :sswitch_4
    const-string p4, "next"

    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 56
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->next()V

    const-string p3, "force"

    .line 57
    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 59
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->play()V

    goto/16 :goto_1

    :sswitch_5
    const-string p4, "openList"

    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->openQueueFromIntent(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_6
    const-string p2, "togglepause"

    .line 36
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    .line 39
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->isSupposedToBePlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 40
    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->d()V

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 45
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->togglePlay()V

    goto :goto_1

    :sswitch_7
    const-string p1, "volume_down"

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x19

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->executeKeyEvent(I)V

    goto :goto_1

    :sswitch_8
    const-string p4, "previous"

    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "force"

    .line 63
    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 66
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->prev(Z)V

    if-eqz p2, :cond_4

    .line 68
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->play()V

    goto :goto_1

    :sswitch_9
    const-string p4, "enqueue"

    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "list"

    .line 84
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 86
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string p1, "list"

    .line 87
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$DefaultImpls;->add$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;II[JZILandroid/os/Bundle;ILjava/lang/Object;)V

    goto :goto_1

    :sswitch_a
    const-string p1, "volume_up"

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x18

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand;->executeKeyEvent(I)V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edb0220 -> :sswitch_a
        -0x5f0671f8 -> :sswitch_9
        -0x4bec4509 -> :sswitch_8
        -0x342aa959 -> :sswitch_7
        -0x2592a0de -> :sswitch_6
        -0x1e17e9f8 -> :sswitch_5
        0x338af3 -> :sswitch_4
        0x348b34 -> :sswitch_3
        0x35ce78 -> :sswitch_2
        0x360802 -> :sswitch_1
        0x65825f6 -> :sswitch_0
    .end sparse-switch
.end method
