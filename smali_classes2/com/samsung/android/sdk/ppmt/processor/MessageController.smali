.class public Lcom/samsung/android/sdk/ppmt/processor/MessageController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;,
        Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MessageController"

.field private static b:Landroid/os/HandlerThread;

.field private static c:Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b(I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;Landroid/os/Bundle;)V
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PpmtMsgCtrThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b:Landroid/os/HandlerThread;

    .line 60
    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 62
    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a:Ljava/lang/String;

    const-string v2, "onStart"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->c:Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;

    .line 67
    :cond_1
    sget p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->d:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->d:I

    .line 69
    sget-object p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->c:Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    sget p1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->d:I

    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 72
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 73
    sget-object p1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->c:Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 54
    :cond_2
    :goto_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a:Ljava/lang/String;

    const-string p1, "cannot execute task. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized b(I)V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;

    monitor-enter v0

    .line 78
    :try_start_0
    sget v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->d:I

    if-ne p0, v1, :cond_0

    .line 79
    sget-object p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    const/4 p0, 0x0

    .line 80
    sput-object p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->b:Landroid/os/HandlerThread;

    .line 81
    sput-object p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->c:Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;

    const/4 p0, 0x0

    .line 82
    sput p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->d:I

    .line 84
    sget-object p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0

    throw p0
.end method
