.class public final Lcom/samsung/android/app/music/milk/util/ResolverUtils$DownloadBasket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/util/ResolverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadBasket"
.end annotation


# static fields
.field private static a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$DownloadBasket;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6

    .line 81
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$DownloadBasket;->a:Landroid/net/Uri;

    const-string v0, "count(track_id)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 82
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 81
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    .line 86
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0
.end method
