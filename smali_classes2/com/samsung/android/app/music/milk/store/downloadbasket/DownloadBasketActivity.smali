.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/BottomBarGetter;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketFragmentGetter;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

.field private d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

.field private e:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$userCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->f:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->g:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->h:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$userCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$userCallback$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->i:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$userCallback$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method private final a(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->e(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;ILjava/util/ArrayList;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    .line 221
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b(Lcom/samsung/android/app/music/model/UserInfo;)V

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 227
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->d(I)V

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->e(I)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .line 285
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 286
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initPageData$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initPageData$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initPageData$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initPageData$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 287
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initPageData$3;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initPageData$3;-><init>()V

    check-cast v0, Lio/reactivex/Observer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->g:Landroid/util/SparseArray;

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "DownloadBasketActivity"

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 308
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 309
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "DownloadBasketApis.verif\u2026         }\n            })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-nez v0, :cond_0

    const-string v1, "subTabLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a(IZ)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-nez v0, :cond_1

    const-string v1, "subTabLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a(IZ)V

    :cond_2
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    check-cast v0, Landroid/view/Menu;

    const v2, 0x7f140001

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initBottomBarMenu$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initBottomBarMenu$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->a(Landroid/app/Activity;Landroid/view/Menu;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    move-result-object v0

    const-string v1, "SimpleBottomBarMenu\n    \u2026d(item)\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    return-void
.end method

.method private final d()Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "DownloadBasketActivity"

    const-string v1, "checkUnAvailableItem"

    .line 337
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "applicationContext"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "MilkContents.DownloadBasket.getContentUri()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    const-string v1, "title"

    .line 341
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "status_code=?"

    const-string v0, "01"

    .line 342
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 339
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 343
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 344
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 345
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v4

    const-string v5, "PublishSubject.create<Boolean>()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 350
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_2

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v5, 0x7f0b0472

    .line 351
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(R.string.milk_\u2026_popup_unavailable_undef)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    .line 350
    array-length v6, v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne v6, v3, :cond_3

    .line 354
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v6, 0x7f0b0471

    .line 355
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.milk_\u2026popup_unavailable_single)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v8

    .line 354
    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 359
    :cond_3
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v7, 0x7f0b0470

    .line 360
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getString(R.string.milk_\u2026popup_unavailable_plural)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    sub-int/2addr v6, v3

    .line 361
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v3

    .line 359
    array-length v3, v9

    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :cond_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v6, "checkUnavailable"

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v2, :cond_5

    .line 371
    check-cast v2, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_3

    :cond_5
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type android.support.v4.app.DialogFragment"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_3
    const-string v2, "DownloadBasketActivity"

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUnAvailableItem count ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b046f

    .line 376
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    .line 377
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02d3

    new-instance v6, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;

    invoke-direct {v6, v5, v4, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;-><init>(Ljava/util/ArrayList;Lio/reactivex/subjects/PublishSubject;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    check-cast v6, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v5, "checkUnavailable"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 390
    check-cast v4, Lio/reactivex/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    .line 392
    :cond_7
    :try_start_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "DownloadBasketActivity"

    const-string v1, "checkUnAvailableItem on next"

    .line 393
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.just(true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v1

    .line 343
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lio/reactivex/Observable;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->d()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "DownloadBasketActivity"

    const-string v1, "observableCheckALC"

    .line 398
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.just(true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 402
    :cond_1
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Boolean>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->j(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 405
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.just(true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "IndividualOnly"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v4, :cond_3

    .line 409
    check-cast v4, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v4}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.DialogFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const-string v4, "DownloadBasketActivity"

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "observableCheckALC count ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v4, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0109

    .line 415
    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000e

    .line 419
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 417
    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 416
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const-string v2, "946"

    .line 423
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01d1

    const-string v3, "9436"

    .line 427
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkALC$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkALC$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;Lio/reactivex/subjects/PublishSubject;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    .line 424
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00cd

    const-string v3, "9435"

    .line 433
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v1

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "IndividualOnly"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 439
    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lio/reactivex/Observable;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->e()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final e(I)V
    .locals 3

    .line 448
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "936"

    packed-switch p1, :pswitch_data_0

    const-string v2, "9393"

    goto :goto_0

    :pswitch_0
    const-string v2, "9392"

    goto :goto_0

    :pswitch_1
    const-string v2, "9391"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_1

    const-string p1, ""

    goto :goto_1

    :pswitch_2
    const-string p1, "basket_individual"

    goto :goto_1

    :pswitch_3
    const-string p1, "basket_subscription"

    goto :goto_1

    :pswitch_4
    const-string p1, "basket_drm"

    .line 463
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 465
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    if-nez v0, :cond_0

    const-string v1, "bottomBarMenu"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;->a(Z)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.downloadbasket.DownloadBasketActivity.DownloadBasketPagerAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_1

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04006f

    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->setContentView(I)V

    const v0, 0x7f130073

    .line 128
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f0b01d3

    .line 131
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_0
    const v0, 0x7f13007c

    .line 134
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const/4 v3, 0x3

    .line 135
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 136
    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "supportFragmentManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;Landroid/support/v4/app/FragmentManager;)V

    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 137
    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    check-cast v3, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string v3, "findViewById<MusicViewPa\u2026tenerAdapter())\n        }"

    .line 134
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const v0, 0x7f130218

    .line 140
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    .line 141
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v3, :cond_1

    const-string v4, "viewPager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    check-cast v3, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const-string v3, "findViewById<MusicSubTab\u2026ager(viewPager)\n        }"

    .line 140
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->c()V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->i:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$userCallback$1;

    check-cast v2, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "DownloadBasket"

    .line 149
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/radio/LaunchDownloadBasketResponseExecutor;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/radio/LaunchDownloadBasketResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v1, v3

    .line 148
    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    const-string v1, "UserInfoManager.getInstance(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    if-nez p1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_track_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent.getStringExtra(KEY_TRACK_IDS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "936"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "key_tab_id"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->d(I)V

    .line 163
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->e:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->e:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    if-nez p1, :cond_4

    const-string v0, "myMusicModeController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->i:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$userCallback$1;

    check-cast v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->e:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    if-nez v0, :cond_0

    const-string v1, "myMusicModeController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_tab_id"

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v1, :cond_0

    const-string v2, "viewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
