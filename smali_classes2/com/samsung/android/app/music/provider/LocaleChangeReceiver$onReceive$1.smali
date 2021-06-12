.class final Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 138
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a:Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 141
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 143
    invoke-static {}, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->b()Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to setLocale"

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a()V

    const-string v2, "audio_meta"

    .line 147
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "date_modified"

    const-wide/16 v5, 0x0

    .line 148
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 147
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    const-string v1, "ACTION_LOCALE_CHANGED - set date_modified as 0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    const-string v1, "content://com.sec.android.app.music/"

    .line 193
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
