.class public final Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

.field private e:Landroid/os/IBinder;

.field private f:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

.field private g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

.field private h:I

.field private final i:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

.field private final j:Landroid/os/Handler;

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->i:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->j:Landroid/os/Handler;

    .line 354
    new-instance v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->k:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e:Landroid/os/IBinder;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;
    .locals 1

    .line 95
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 99
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/os/IBinder;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->interrupt()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->unregisterClient(Landroid/os/IBinder;Z)Z

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    return p0
.end method

.method private e()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "PrivateMode"

    const-string v1, " registerPrivateOffReceiver()"

    .line 336
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "PrivateMode"

    const-string v1, " unregisterPrivateOffReceiver()"

    .line 345
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 148
    iput-object v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a()V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(IZ)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    iget v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f()V

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    return-void
.end method

.method public a([JLjava/lang/String;Z)V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c()V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f()V

    if-eqz p1, :cond_2

    .line 113
    array-length v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;-><init>(Landroid/content/Context;Ljava/lang/String;[JZ)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    sget-object p2, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->setName(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->j:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Landroid/os/Handler;)V

    .line 121
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e()V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->start()V

    const-string p1, "PrivateMode"

    const-string p2, " start thread "

    .line 126
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 127
    iput p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    goto :goto_0

    :cond_1
    const-string p1, "PrivateMode"

    const-string p2, " wait private manager callback. instead start thread "

    .line 129
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance p1, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->i:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    const/4 p1, -0x1

    .line 131
    iput p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->h:I

    return v0
.end method
