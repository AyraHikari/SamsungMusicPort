.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncLog"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;

.field private static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1203
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;

    const-string v0, "content://com.sec.android.app.music/sync_log"

    .line 1208
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->b:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1214
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "message"

    .line 1215
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "MusicDBInfo"

    .line 1217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SyncLog leaved msg ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1221
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->b:Landroid/net/Uri;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1222
    check-cast v0, Ljava/util/Collection;

    .line 1288
    new-array v1, v2, [Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, [Landroid/content/ContentValues;

    .line 1220
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void

    .line 1288
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
