.class public Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader$Companion;


# instance fields
.field private final a:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private b:Landroid/net/Uri;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/database/Cursor;

.field private i:Landroid/os/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->a:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 77
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    .line 78
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->d:[Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->e:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->f:[Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 61
    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 62
    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 63
    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 64
    iget-object v7, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 187
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    .line 232
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->d:[Ljava/lang/String;

    .line 233
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->e:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->f:[Ljava/lang/String;

    .line 235
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected c()Landroid/database/Cursor;
    .locals 14

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v0, "context"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->g(Landroid/net/Uri;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->d:[Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->e:Ljava/lang/String;

    .line 126
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->f:[Ljava/lang/String;

    .line 127
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->g:Ljava/lang/String;

    .line 128
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->i:Landroid/os/CancellationSignal;

    move-object v0, v7

    .line 122
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 133
    :cond_2
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 134
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit16 v3, v11, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/16 v12, 0x1388

    .line 135
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 133
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    invoke-static {v0, v13}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "MediaContents.getLimitAppendedUri(uri, limit)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->d:[Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->e:Ljava/lang/String;

    .line 142
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->f:[Ljava/lang/String;

    .line 143
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->g:Ljava/lang/String;

    .line 144
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->i:Landroid/os/CancellationSignal;

    move-object v0, v7

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "MusicCursorLoader"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInBackgroundInternal() limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cursor.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v12, :cond_2

    :goto_0
    if-le v11, v9, :cond_5

    .line 162
    check-cast v8, Ljava/util/Collection;

    .line 275
    new-array v0, v10, [Landroid/database/Cursor;

    invoke-interface {v8, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, [Landroid/database/Cursor;

    .line 162
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    goto :goto_1

    .line 275
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public cancelLoadInBackground()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->i:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "uri="

    .line 246
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "projection="

    .line 249
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->d:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "selection="

    .line 252
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->e:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "selectionArgs="

    .line 255
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->f:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "sortOrder="

    .line 258
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->g:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "cursor="

    .line 261
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Landroid/database/Cursor;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->i:Landroid/os/CancellationSignal;

    .line 90
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 86
    monitor-exit p0

    const/4 v0, 0x0

    .line 92
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->c()Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 96
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 97
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->a:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    check-cast v2, Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 99
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :cond_0
    :goto_0
    monitor-enter p0

    .line 106
    :try_start_4
    check-cast v0, Landroid/os/CancellationSignal;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->i:Landroid/os/CancellationSignal;

    .line 107
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 106
    :try_start_5
    check-cast v0, Landroid/os/CancellationSignal;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->i:Landroid/os/CancellationSignal;

    .line 107
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 105
    monitor-exit p0

    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_1
    :try_start_6
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 86
    monitor-exit p0

    throw v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->e()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onStopLoading()V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v0, 0x0

    .line 227
    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->a(Landroid/database/Cursor;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->h:Landroid/database/Cursor;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->cancelLoad()Z

    return-void
.end method
