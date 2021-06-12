.class public final Lcom/samsung/android/app/music/provider/SyncComponentInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;

.field private static volatile c:Lcom/samsung/android/app/music/provider/SyncComponentInitializer;


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->a:Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "appContext"

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MusicSyncObserverThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 34
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->b:Landroid/os/Handler;

    .line 38
    new-instance v1, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->b:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->a(J)V

    const-string v2, "content://media/external/audio"

    .line 193
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Uri.parse(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    check-cast v1, Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_0

    const-string v2, "content://media/external/file"

    .line 194
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "Uri.parse(this)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/provider/MediaScannerReceiver;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MediaScannerReceiver;-><init>()V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;-><init>()V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic a()Lcom/samsung/android/app/music/provider/SyncComponentInitializer;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->c:Lcom/samsung/android/app/music/provider/SyncComponentInitializer;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/provider/SyncComponentInitializer;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->c:Lcom/samsung/android/app/music/provider/SyncComponentInitializer;

    return-void
.end method
