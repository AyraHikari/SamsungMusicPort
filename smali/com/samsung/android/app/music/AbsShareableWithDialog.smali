.class public abstract Lcom/samsung/android/app/music/AbsShareableWithDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;,
        Lcom/samsung/android/app/music/AbsShareableWithDialog$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/AbsShareableWithDialog$Companion;


# instance fields
.field private final c:Landroid/support/v4/app/FragmentActivity;

.field private final d:Landroid/support/v4/app/FragmentManager;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/AbsShareableWithDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "logger"

    const-string v4, "getLogger()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->b:Lcom/samsung/android/app/music/AbsShareableWithDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->h:Lkotlin/Lazy;

    .line 64
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c:Landroid/support/v4/app/FragmentActivity;

    .line 65
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->d:Landroid/support/v4/app/FragmentManager;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->d()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->h:Lkotlin/Lazy;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c:Landroid/support/v4/app/FragmentActivity;

    .line 58
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "activity.supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->d:Landroid/support/v4/app/FragmentManager;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->e:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->d()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/AbsShareableWithDialog;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->f:Ljava/lang/String;

    return-object p0
.end method

.method private final a(Landroid/content/Context;[J)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    const-string v2, "source_id"

    .line 168
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->projection:[Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    array-length v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-wide v7, p2, v6

    const-string v9, "?,"

    .line 173
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string p2, ","

    .line 176
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    .line 177
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    .line 178
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 179
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selection:Ljava/lang/String;

    .line 181
    check-cast v2, Ljava/util/Collection;

    .line 274
    new-array p2, v5, [Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, [Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 184
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->uri:Landroid/net/Uri;

    const-string v2, "args.uri"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->projection:[Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selection:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->orderBy:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 186
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 187
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 189
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 192
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 190
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 194
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, p2

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 274
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isHdmiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 207
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_LIST_SMART_VIEW:Z

    if-eqz v1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v1, "share_music_from_player"

    .line 210
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v2
.end method

.method private final c()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/AbsShareableWithDialog;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    return-object v0
.end method

.method private final d()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->d:Landroid/support/v4/app/FragmentManager;

    const-string v1, "ShareLegalDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    if-eqz v0, :cond_1

    .line 74
    new-instance v1, Lcom/samsung/android/app/music/AbsShareableWithDialog$initLegalDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$initLegalDialog$1;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->a(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->f:Ljava/lang/String;

    return-void
.end method

.method protected final a(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method protected final a([J)Z
    .locals 4

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/AbsShareableWithDialogKt;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    sget-object v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;->a([J)Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;[J)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->a(Lkotlin/jvm/functions/Function1;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->d:Landroid/support/v4/app/FragmentManager;

    const-string v1, "ShareLegalDialog"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v2

    :cond_1
    return v3
.end method

.method protected b([J)V
    .locals 14

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 106
    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->g:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_1
    return-void

    :cond_2
    const/16 v3, 0x1f4

    const/4 v4, 0x1

    if-le v2, v3, :cond_3

    const p1, 0x7f0b0382

    .line 113
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026strings, LIMIT_MAX_COUNT)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 117
    :cond_3
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;[J)Z

    move-result v3

    if-eqz v3, :cond_4

    const p1, 0x7f0b02cf

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.string.not_supported_drm_file)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const/4 v3, 0x2

    .line 122
    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;[JI)I

    move-result v3

    if-lez v3, :cond_5

    const v3, 0x7f0b02d0

    .line 123
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "context.getString(R.stri\u2026ported_streaming_content)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v3, 0x0

    if-nez p1, :cond_6

    .line 127
    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto/16 :goto_8

    :cond_6
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->a(Landroid/content/Context;[J)Ljava/util/ArrayList;

    move-result-object v5

    if-ne v2, v4, :cond_a

    .line 129
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.STREAM"

    .line 130
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_9

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_4

    :cond_9
    move-object v5, v3

    :goto_4
    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    .line 133
    :cond_a
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.STREAM"

    .line 134
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_5
    const-string v5, "audio/*"

    .line 137
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "more_actions_package_name"

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v5, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;Landroid/content/Context;)V

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 140
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->f:Ljava/lang/String;

    if-eqz v5, :cond_b

    const-string v5, "extra_chooser_bixby_applist"

    .line 141
    iget-object v7, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->f:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->e:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->e:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 144
    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getScreenSharingMode(Landroid/content/Context;Z)I

    move-result v5

    const-string v7, "more_actions_screen_sharing"

    .line 145
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "share_music_from"

    .line 146
    iget-object v7, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->e:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    const v5, 0x7f0b0384

    .line 150
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v6, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 151
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;[J)J

    move-result-wide v6

    .line 152
    invoke-static {v0, v6, v7}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    const-string v0, "sem_extra_chooser_content_count"

    .line 153
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "sem_extra_chooser_content_size"

    .line 154
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v5}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->g:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_d

    :goto_6
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    goto :goto_9

    .line 160
    :goto_7
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$2;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$2;-><init>(Ljava/lang/NullPointerException;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->g:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_d

    goto :goto_6

    .line 158
    :goto_8
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->c()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$1;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$1;-><init>(Landroid/content/ActivityNotFoundException;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->g:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    :goto_9
    return-void

    :goto_a
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->g:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_e
    throw p1

    :cond_f
    return-void
.end method

.method protected abstract b()[J
.end method

.method public m_()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->b()[J

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->a([J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->b([J)V

    :cond_0
    const/4 v0, 0x0

    .line 79
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->f:Ljava/lang/String;

    return-void
.end method
