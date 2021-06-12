.class public Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static final b:Ljava/lang/Object;

.field private static c:I


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->a:Landroid/content/UriMatcher;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->c:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 55
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    sget v1, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->c:I

    .line 57
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->a:Landroid/content/UriMatcher;

    sget v2, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->c:I

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "DaoNotifyHandler"

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerUri : added uri - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->c:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget p1, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->c:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 60
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DaoNotifyHandler"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUri : remove duplicated message. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->removeMessages(I)V

    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 70
    iput v0, v1, Landroid/os/Message;->what:I

    .line 71
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    .line 72
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v0, "DaoNotifyHandler"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalNotifyUri : uri - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->b(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
