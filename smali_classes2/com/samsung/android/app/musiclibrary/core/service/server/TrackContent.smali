.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final BYTES_PARAM:Ljava/lang/String; = "bytes="

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$Companion;

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-ContentServer"

.field private static final RANGE_DASH:Ljava/lang/String; = "-"

.field private static final SUB_TAG:Ljava/lang/String; = "Responder> "


# instance fields
.field private final context:Landroid/content/Context;

.field private final id$delegate:Lkotlin/Lazy;

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "getId()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->path:Ljava/lang/String;

    .line 19
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$id$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$id$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->id$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPath$p(Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->path:Ljava/lang/String;

    return-object p0
.end method

.method private final findFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v0, 0x1

    .line 53
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    .line 51
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 206
    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 55
    :goto_0
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    new-instance p1, Ljava/io/File;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 55
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, p1

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->id$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;J)J
    .locals 7

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getRange$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "-"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getRange$musicLibrary_release()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 67
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    if-eqz v1, :cond_3

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    sub-long p1, p2, v2

    :goto_1
    return-wide p1

    .line 62
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;)I
    .locals 8

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getRange$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "-"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getRange$musicLibrary_release()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "bytes="

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getRange$musicLibrary_release()Ljava/lang/String;

    move-result-object p1

    const-string v2, "bytes="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Integer.valueOf(h.range.\u2026S_PARAM.length, dashPos))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final sendBody(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 135
    move-object/from16 v4, p1

    check-cast v4, Ljava/io/Closeable;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v4

    check-cast v7, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmp-long v11, p3, v8

    if-lez v11, :cond_1

    const/4 v11, 0x0

    :goto_0
    int-to-long v12, v11

    cmp-long v14, v12, p3

    if-gez v14, :cond_1

    sub-long v12, p3, v12

    .line 140
    :try_start_1
    invoke-virtual {v7, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    long-to-int v12, v12

    add-int/2addr v11, v12

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendBody >> bytes skipped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    if-eqz v11, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Can\'t skip!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v4

    goto/16 :goto_7

    :cond_1
    const/4 v11, 0x0

    sub-long v11, p5, p3

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    const/high16 v8, 0x20000

    int-to-long v13, v8

    cmp-long v9, v11, v13

    if-lez v9, :cond_2

    goto :goto_1

    :cond_2
    long-to-int v8, v11

    .line 151
    :goto_1
    :try_start_2
    new-array v8, v8, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v11, p3

    const/4 v2, 0x0

    :goto_2
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 158
    :try_start_3
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v3, :cond_3

    goto :goto_4

    .line 162
    :cond_3
    invoke-virtual {v0, v8, v10, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v4

    int-to-long v3, v2

    add-long/2addr v11, v3

    add-long v3, v11, v13

    cmp-long v3, p5, v3

    if-gez v3, :cond_5

    const-wide/16 v3, 0x1

    add-long v3, p5, v3

    sub-long/2addr v3, v11

    const-wide/16 v15, 0x0

    cmp-long v5, v3, v15

    if-lez v5, :cond_4

    .line 167
    :try_start_4
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    long-to-int v5, v3

    .line 168
    invoke-virtual {v0, v8, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    const/4 v0, 0x0

    add-long/2addr v11, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object/from16 v2, v17

    goto :goto_7

    .line 171
    :cond_4
    :goto_3
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBody >> last bytes sent completed [sent byte:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] bytesRead "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastByteLen "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_5
    const-wide/16 v15, 0x0

    move-object/from16 v4, v17

    goto :goto_2

    :cond_6
    :goto_4
    move-object/from16 v17, v4

    .line 180
    :cond_7
    :goto_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBody >> bytes sent completed [sent byte:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, v17

    .line 135
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v4

    :goto_6
    move-object v6, v0

    :goto_7
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :goto_8
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final setupHeader(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP/1.1 200 OK"

    .line 84
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "setupHeader >> response code 200"

    .line 85
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupHeader >> contentLength "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_0
    const-string p2, "Content-Type: audio/mpeg"

    .line 91
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, "Accept-Ranges: bytes"

    .line 92
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, "Connection: close"

    .line 93
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, ""

    .line 94
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private final setupPartialHeader(Ljava/io/OutputStream;JJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    const-string v2, "HTTP/1.1 206 Partial content"

    .line 109
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    cmp-long v2, p6, p4

    if-ltz v2, :cond_0

    sub-long v0, p6, p4

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Range: bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p4, 0x2d

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p4, 0x2f

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p3, "Content-Type: audio/mpeg"

    .line 119
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p3, "Accept-Ranges: bytes"

    .line 120
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p3, "Connection: close"

    .line 121
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p3, ""

    .line 122
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p1, "setupPartialHeader >> response code 206"

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setupPartialHeader >> contentLength "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setupPartialHeader >> rangeLine "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Trying to response of partial request but total bytes is abnormal "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final writePlayingContents$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;Ljava/net/Socket;)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v1, "h"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "socket"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested playing content ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->findFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 30
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v14, v1

    check-cast v14, Ljava/lang/Throwable;

    :try_start_0
    move-object v15, v13

    check-cast v15, Ljava/io/OutputStream;

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getRange$musicLibrary_release()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "out"

    .line 35
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v15, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->setupHeader(Ljava/io/OutputStream;J)V

    move-wide v4, v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;)I

    move-result v1

    int-to-long v7, v1

    .line 38
    invoke-direct {v9, v0, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;J)J

    move-result-wide v16

    const-string v0, "out"

    .line 39
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide v3, v11

    move-wide v5, v7

    move-wide/from16 v18, v7

    move-wide/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->setupPartialHeader(Ljava/io/OutputStream;JJJ)V

    move-wide/from16 v4, v18

    .line 41
    :goto_0
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to chain ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Head finished -----------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    const-wide/16 v0, 0x1

    sub-long v6, v11, v0

    move-object/from16 v1, p0

    move-object v3, v15

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->sendBody(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .line 44
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to chain ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Body finished -----------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->printInfoLog(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v13, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_1
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v13, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
