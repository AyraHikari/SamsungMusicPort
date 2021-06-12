.class public final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$Companion;


# instance fields
.field private b:Lkotlinx/coroutines/Job;

.field private c:Landroid/app/ProgressDialog;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$multipleModeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$multipleModeListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->f()I

    move-result p0

    return p0
.end method

.method private final b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "_data"

    .line 314
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->j()V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method private final d()V
    .locals 7

    const-string v0, "MDrmTracksFragment"

    const-string v1, "performGetLicense start"

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->i()V

    .line 188
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;-><init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b:Lkotlinx/coroutines/Job;

    const-string v0, "MDrmTracksFragment"

    const-string v1, "performGetLicense end"

    .line 213
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final f()I
    .locals 14

    const-string v0, "MDrmTracksFragment"

    const-string v1, "getLicense start"

    .line 218
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->a(I)[J

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 221
    array-length v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eqz v3, :cond_1

    const-string v0, "MDrmTracksFragment"

    const-string v1, "getLicense checked item is 0"

    .line 222
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 312
    :cond_1
    array-length v3, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_8

    aget-wide v6, v1, v5

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v9, "activity!!"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 229
    new-instance v9, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const-string v10, "audio_id"

    .line 231
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-direct {v9, v10, v6}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_7

    check-cast v6, Landroid/content/Context;

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-static {v6, v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_7

    check-cast v6, Ljava/io/Closeable;

    const/4 v7, 0x0

    move-object v9, v7

    check-cast v9, Ljava/lang/Throwable;

    :try_start_0
    move-object v10, v6

    check-cast v10, Landroid/database/Cursor;

    .line 234
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "MDrmTracksFragment"

    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " get license - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {v8, v10}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v10

    const-string v11, "drmContent"

    .line 239
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v11

    .line 241
    invoke-static {v8, v10, v7}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v0, "MDrmTracksFragment"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fail to parsing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    if-eq v11, v0, :cond_3

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "downloading_device_overflow"

    .line 244
    invoke-static {v8, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :pswitch_1
    const-string v0, "drm-expired"

    .line 251
    invoke-static {v8, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_2
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v4

    .line 255
    :cond_4
    :try_start_1
    invoke-static {v8, v10}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 257
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b:Lkotlinx/coroutines/Job;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lkotlinx/coroutines/Job;->b()Z

    move-result v7

    if-eq v7, v0, :cond_5

    goto :goto_3

    .line 260
    :cond_5
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 258
    :cond_6
    :goto_3
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 233
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    const-string v0, "MDrmTracksFragment"

    const-string v1, "getLicense end"

    .line 264
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch -0x192
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final i()V
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b018e

    .line 273
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 274
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 276
    new-instance v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$showLoading$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$showLoading$$inlined$let$lambda$1;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "MDrmTracksFragment"

    const-string v2, "setOnDismissListener"

    .line 280
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 272
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->c:Landroid/app/ProgressDialog;

    const-string v0, "MDrmTracksFragment"

    const-string v1, "showLoading"

    .line 284
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final j()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "activity"

    .line 291
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 296
    check-cast v0, Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->c:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->c()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 112
    new-instance p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Z)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;
    .locals 4

    .line 120
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 121
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const-string v1, "artist"

    .line 122
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const-string v1, "album_id"

    .line 123
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const-string v1, "audio_id"

    .line 124
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    .line 125
    sget-object v1, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->a:Landroid/net/Uri;

    const-string v2, "MilkContents.Thumbnails.MILK_ALBUM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x80001

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const/4 v1, 0x2

    .line 126
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/DrmType;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmType.getDisplayName(DrmType.MILK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->b(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    .line 120
    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100059

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 62
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->a(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 102
    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.content.AsyncTaskLoader<android.database.Cursor>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f14002c

    .line 134
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "UiList"

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".toString()  onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f040245

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ist_kt, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const v2, 0x7f1305eb

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 146
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_7

    const-string p1, "MDrmTracksFragment"

    const-string v1, "menu_get_license"

    .line 147
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "activity!!"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    const-string v2, "UserInfoManager.getInsta\u2026ity!!.applicationContext)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    const-string v2, "UserInfoManager.getInsta\u2026            .userInfoSync"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->d()V

    goto :goto_1

    .line 161
    :cond_4
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0119

    .line 162
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f0b02d3

    .line 163
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "drm_product_expired"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return v1

    .line 170
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    if-eqz p1, :cond_1

    const v0, 0x7f1305eb

    .line 138
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->a()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const p2, 0x7f0b047a

    .line 79
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.milk_drm_get_license)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 83
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->c(Z)V

    .line 92
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    const v0, 0x7f0b0350

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 93
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b_(I)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v4, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 116
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
