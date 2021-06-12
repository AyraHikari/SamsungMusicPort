.class public final Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;,
        Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$Companion;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$Companion;


# instance fields
.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->b:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$Companion;

    const-string v0, "content://com.sec.android.app.music.setting/setting"

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->e:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->a:Landroid/net/Uri;

    const-string v2, "CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 68
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "name"

    .line 70
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 71
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "default_value"

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 30
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->e:Landroid/content/Context;

    const-string p1, "uri"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "value"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 32
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    .line 39
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->e:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->a:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "Uri.withAppendedPath(CONTENT_URI, key)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Setting"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->c:Landroid/os/HandlerThread;

    .line 46
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->c:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;-><init>(Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;Landroid/os/Handler;)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->a(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 46
    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->e:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->a:Landroid/net/Uri;

    const-string v1, "CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v2, Landroid/database/ContentObserver;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/database/ContentObserver;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->a()V

    .line 56
    move-object p1, v0

    check-cast p1, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->d:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_4

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->c:Landroid/os/HandlerThread;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 60
    check-cast v0, Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->c:Landroid/os/HandlerThread;

    :cond_4
    return-void
.end method
