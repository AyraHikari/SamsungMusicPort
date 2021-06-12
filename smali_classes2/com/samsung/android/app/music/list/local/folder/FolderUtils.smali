.class public final Lcom/samsung/android/app/music/list/local/folder/FolderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/folder/FolderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 428
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderUtils;->a:Lcom/samsung/android/app/music/list/local/folder/FolderUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucketId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 432
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 433
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v1, "path"

    .line 434
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "uri"

    .line 437
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 438
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 439
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 441
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "UiList-FT"

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderUtils.getPath() bucketId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " path: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 437
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
