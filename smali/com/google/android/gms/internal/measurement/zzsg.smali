.class public Lcom/google/android/gms/internal/measurement/zzsg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/Object;

.field private static l:Z

.field private static m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.google.android.gsf.gservices"

    .line 104
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->c:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->d:Landroid/net/Uri;

    const-string v0, "^(1|true|t|on|yes|y)$"

    const/4 v1, 0x2

    .line 108
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->a:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|off|no|n)$"

    .line 110
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->b:Ljava/util/regex/Pattern;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->g:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->h:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->i:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 91
    const-class v0, Lcom/google/android/gms/internal/measurement/zzsg;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 94
    :goto_0
    monitor-exit v0

    return-object p0

    .line 95
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 17
    const-class p2, Lcom/google/android/gms/internal/measurement/zzsg;

    monitor-enter p2

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Landroid/content/ContentResolver;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->k:Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v2

    .line 22
    :goto_0
    monitor-exit p2

    return-object p0

    .line 23
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->m:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v3, :cond_6

    aget-object v7, v1, v5

    .line 24
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 25
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzsg;->l:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->m:[Ljava/lang/String;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28
    sput-boolean v6, Lcom/google/android/gms/internal/measurement/zzsg;->l:Z

    .line 29
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 30
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v2

    .line 31
    :goto_2
    monitor-exit p2

    return-object p0

    .line 32
    :cond_4
    monitor-exit p2

    return-object v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 34
    :cond_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    sget-object v8, Lcom/google/android/gms/internal/measurement/zzsg;->c:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v11, v6, [Ljava/lang/String;

    aput-object p1, v11, v4

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_8

    if-eqz p0, :cond_7

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v2

    .line 40
    :cond_8
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_a

    .line 41
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_9

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v2

    .line 45
    :cond_a
    :try_start_2
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object p2, v2

    .line 48
    :cond_b
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    move-object p2, v2

    :goto_3
    if-eqz p0, :cond_d

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object p2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_e

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_e
    throw p1

    :catchall_1
    move-exception p0

    .line 34
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static varargs a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 79
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    if-nez p0, :cond_0

    return-object p1

    .line 81
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 82
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;)V
    .locals 4

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->k:Ljava/lang/Object;

    .line 6
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzsg;->l:Z

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsg;->c:Landroid/net/Uri;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzsh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzsh;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 8
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 11
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 13
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->j:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 14
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->k:Ljava/lang/Object;

    .line 15
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzsg;->l:Z

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    const-class v0, Lcom/google/android/gms/internal/measurement/zzsg;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->k:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    .line 57
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 97
    const-class v0, Lcom/google/android/gms/internal/measurement/zzsg;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->k:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    .line 99
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 5

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsg;->b(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsg;->g:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x0

    .line 64
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_4

    const-string v4, ""

    .line 66
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzsg;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 p2, 0x1

    goto :goto_0

    .line 71
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzsg;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "Gservices"

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attempt to read gservices key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\") as boolean"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->g:Ljava/util/HashMap;

    invoke-static {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    return p2
.end method

.method private static b(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1

    .line 87
    const-class v0, Lcom/google/android/gms/internal/measurement/zzsg;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Landroid/content/ContentResolver;)V

    .line 89
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsg;->k:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
