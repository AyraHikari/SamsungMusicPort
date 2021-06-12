.class public final Lcom/samsung/android/app/music/main/EventManagerTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/main/MainActivityTask;
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;,
        Lcom/samsung/android/app/music/main/EventManagerTask$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/main/EventManagerTask$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/model/milkevent/EventWeb;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lio/reactivex/disposables/CompositeDisposable;

.field private final l:Z

.field private final m:Lkotlin/Lazy;

.field private final n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

.field private final o:Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;

.field private final p:Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;

.field private final q:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "userInfoManager"

    const-string v4, "getUserInfoManager()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/main/EventManagerTask;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/main/EventManagerTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/EventManagerTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/EventManagerTask;->b:Lcom/samsung/android/app/music/main/EventManagerTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->j:Z

    .line 79
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->k:Lio/reactivex/disposables/CompositeDisposable;

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->l:Z

    .line 84
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/main/EventManagerTask$userInfoManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$userInfoManager$2;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->m:Lkotlin/Lazy;

    .line 88
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 90
    new-instance p1, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->o:Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;

    .line 99
    new-instance p1, Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->p:Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "popup_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->b()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "EventPopups.getContentUri()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 437
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 438
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 439
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "do_not_show_time"

    .line 440
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "EventManager"

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSavedDoNotShowTime of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 443
    :goto_0
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v1

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p2

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;)Landroid/os/Handler;
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->e:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string v0, "artWorkLoaderHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 387
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v3, "calendar"

    .line 388
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 389
    check-cast p1, Ljava/lang/Iterable;

    .line 528
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_2
    check-cast v1, Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    .line 390
    iget-object v2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item.popupId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v3, v6

    if-ltz v2, :cond_3

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "EventManager"

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeDoNotShowEvents - Add popup "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private final a(I)V
    .locals 5

    const-string v0, "EventManager"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected - tab tabId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/main/EventManagerTask;

    iget-object v1, v0, Lcom/samsung/android/app/music/main/EventManagerTask;->c:Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->d()V

    .line 276
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->j:Z

    if-nez v1, :cond_1

    return-void

    .line 278
    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/music/main/EventManagerTask;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const-string v1, "eventPopupList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    .line 525
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    const/16 v2, 0x31

    .line 280
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupCombination()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_3

    .line 281
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->j:Z

    return-void

    :cond_4
    const-string p1, "EventManager"

    const-string v0, "onTabSelected - No Event Popup exist on this tab"

    .line 286
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "EventManager"

    const-string v0, "onTabSelected - Event Popup data not received yet"

    .line 288
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->h:Z

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Landroid/os/Handler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->e:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventWeb;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->c:Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/EventManagerTask;Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V
    .locals 4

    .line 317
    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTaskKt;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getCheckMarketing()Ljava/lang/String;

    move-result-object v1

    const-string v2, "popup.checkMarketing"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 321
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;-><init>()V

    .line 329
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "popup"

    .line 330
    move-object v3, p1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 329
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->setArguments(Landroid/os/Bundle;)V

    .line 332
    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V

    check-cast v1, Lcom/samsung/android/app/music/milk/event/EventPopupListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a(Lcom/samsung/android/app/music/milk/event/EventPopupListener;)V

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 345
    check-cast v0, Landroid/support/v4/app/Fragment;

    const-string v2, "EventPopupDialog"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 346
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v1, "eventPopupList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 349
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->j:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    :pswitch_1
    return-void

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->getEventPopupList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return-void

    .line 375
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup_id NOT IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTaskKt;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const-string p1, "\',\'"

    .line 376
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string p1, "(\'"

    .line 377
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const-string p1, "\')"

    .line 378
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    .line 375
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v0

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->b()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "EventPopups.getContentUri()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 3

    .line 403
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "EventManager"

    const-string p2, "loadImage : url is null!!"

    .line 404
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "EventManager"

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImage url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/samsung/android/app/music/main/EventManagerTask;->b:Lcom/samsung/android/app/music/main/EventManagerTask$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;I)V

    check-cast v1, Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->e:Landroid/os/Handler;

    const p2, 0x7f1000b6

    .line 428
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 429
    iget-object p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->e:Landroid/os/Handler;

    if-nez p2, :cond_3

    const-string v0, "artWorkLoaderHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_notification"

    .line 307
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "Y"

    .line 312
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const-string v1, "N"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "A"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private final b(I)I
    .locals 4

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    :goto_0
    :pswitch_2
    const-string v1, "EventManager"

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertTabId | originalId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", convertId - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/main/MainActivity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    return-object p0
.end method

.method private final b()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/EventManagerTask;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/main/EventManagerTask;Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->h:Z

    return-void
.end method

.method private final b(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V
    .locals 4

    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "popup_id"

    .line 360
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "do_not_show_time"

    .line 361
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getDoNotShowTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    .line 367
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->b()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "EventPopups.getContentUri()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 368
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->b()Landroid/net/Uri;

    move-result-object p1

    const-string v2, "EventPopups.getContentUri()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/main/EventManagerTask;)Ljava/util/ArrayList;
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->d:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const-string v0, "eventPopupList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final c()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->k:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    const-string v2, "OriginUserInfoManager.ge\u2026ivity.applicationContext)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v1

    .line 166
    new-instance v2, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 168
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 183
    new-instance v3, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$3;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 168
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/main/EventManagerTask;Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->f:Z

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/model/milkevent/EventWeb;
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->c:Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    if-nez p0, :cond_0

    const-string v0, "eventWeb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->k:Lio/reactivex/disposables/CompositeDisposable;

    .line 237
    sget-object v2, Lcom/samsung/android/app/music/network/request/browse/EventApi;->a:Lcom/samsung/android/app/music/network/request/browse/EventApi;

    iget-object v3, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/network/request/browse/EventApi;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v2

    .line 238
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 239
    check-cast v0, Lio/reactivex/Observer;

    invoke-virtual {v2, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 236
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/main/EventManagerTask;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->h:Z

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/main/EventManagerTask;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->f:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->b()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    const-string v1, "userInfoManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    const-string v1, "userInfoManager.userInfoSync"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "EventManager"

    const-string v2, "launchEventWeb - not signed in"

    .line 247
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f0b0482

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->f:Z

    return-void

    .line 253
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/main/EventManagerTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/EventManagerTask;->c:Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    if-nez v0, :cond_2

    const-string v0, "EventManager"

    const-string v2, "launchEventWeb - not receive event data"

    .line 254
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-boolean v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->g:Z

    return-void

    :cond_2
    const-string v0, "EventManager"

    const-string v1, "launchEventWeb mEventWeb is not null"

    .line 259
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    const-string v4, "TimeZone.getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 261
    invoke-static {v0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const-string v2, "event_latest_check_time"

    const-string v3, "checkTime"

    .line 265
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "event_badge_exist"

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->invalidateOptionsMenu()V

    .line 269
    sget-object v1, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->q:Lcom/samsung/android/app/music/main/MainActivity;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->c:Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    if-nez v0, :cond_3

    const-string v3, "eventWeb"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    const-string v0, "eventWeb.linkUrl"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    .line 125
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_is_showing_popup"

    iget-boolean v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->j:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V

    if-eqz p2, :cond_0

    const-string p3, "key_is_showing_popup"

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->j:Z

    :cond_0
    const-string p2, "EventManager"

    const-string p3, "EventManagerTask created"

    .line 137
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->b()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->p:Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;

    check-cast p3, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v0, "mobile_data"

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 140
    iget-boolean p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->l:Z

    if-eqz p2, :cond_1

    .line 141
    iget-boolean p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    if-nez p2, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->c()V

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->o:Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;

    check-cast p3, Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;)V

    .line 148
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/main/MainActivity;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 149
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/main/MainActivity;->setEventManager(Lcom/samsung/android/app/music/main/EventManagerTask;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3

    const-string v0, "networkInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EventManager"

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkStateChanged - networkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    if-nez p1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->c()V

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->d()V

    const/4 p1, 0x1

    .line 452
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->d(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->c(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->e(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->k:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->b()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->p:Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "mobile_data"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 159
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/main/EventManagerTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/main/EventManagerTask;->e:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->e:Landroid/os/Handler;

    if-nez p1, :cond_0

    const-string v0, "artWorkLoaderHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->f(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->g(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->h(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->isResumedState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(I)V

    :cond_0
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EventManager"

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mobile_data"

    .line 458
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->n:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const-string v0, "mobile_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    iget-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->l:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    if-nez p1, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->c()V

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/EventManagerTask;->d()V

    .line 463
    iput-boolean p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask;->i:Z

    :cond_1
    return-void
.end method
