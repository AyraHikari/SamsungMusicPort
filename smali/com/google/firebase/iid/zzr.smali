.class final Lcom/google/firebase/iid/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/MessagingChannel;


# instance fields
.field private final a:Lcom/google/firebase/FirebaseApp;

.field private final b:Lcom/google/firebase/iid/zzan;

.field private final c:Lcom/google/firebase/iid/zzat;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/iid/zzat;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/iid/zzat;-><init>(Landroid/content/Context;Lcom/google/firebase/iid/zzan;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/zzr;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Lcom/google/firebase/iid/zzat;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Lcom/google/firebase/iid/zzat;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/iid/zzr;->a:Lcom/google/firebase/FirebaseApp;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/iid/zzr;->b:Lcom/google/firebase/iid/zzan;

    .line 6
    iput-object p4, p0, Lcom/google/firebase/iid/zzr;->c:Lcom/google/firebase/iid/zzat;

    .line 7
    iput-object p3, p0, Lcom/google/firebase/iid/zzr;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/google/firebase/iid/zzi;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzt;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzt;-><init>(Lcom/google/firebase/iid/zzr;)V

    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "scope"

    .line 41
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "sender"

    .line 42
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "subtype"

    .line 43
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appid"

    .line 44
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    .line 45
    iget-object p2, p0, Lcom/google/firebase/iid/zzr;->a:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->c()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    .line 46
    iget-object p2, p0, Lcom/google/firebase/iid/zzr;->b:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p2}, Lcom/google/firebase/iid/zzan;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    .line 47
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    .line 48
    iget-object p2, p0, Lcom/google/firebase/iid/zzr;->b:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p2}, Lcom/google/firebase/iid/zzan;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    .line 49
    iget-object p2, p0, Lcom/google/firebase/iid/zzr;->b:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p2}, Lcom/google/firebase/iid/zzan;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fiid-12451000"

    .line 50
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 52
    iget-object p2, p0, Lcom/google/firebase/iid/zzr;->d:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/firebase/iid/zzs;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/firebase/iid/zzs;-><init>(Lcom/google/firebase/iid/zzr;Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    const-string v0, "registration_id"

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "unregistered"

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "error"

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RST"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 66
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected response: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "INSTANCE_ID_RESET"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/google/firebase/iid/zzr;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lcom/google/firebase/iid/zzr;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/firebase/iid/zzr;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/iid/zzu;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzu;-><init>(Lcom/google/firebase/iid/zzr;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gcm.topic"

    const-string v2, "/topics/"

    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/topics/"

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/zzr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzr;->b(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzr;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/google/firebase/iid/zzr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzr;->b(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzr;->c:Lcom/google/firebase/iid/zzat;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzat;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gcm.topic"

    const-string v2, "/topics/"

    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v2, "1"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/topics/"

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 38
    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/zzr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzr;->b(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzr;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/zzr;->b:Lcom/google/firebase/iid/zzan;

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzan;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
