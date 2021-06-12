.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;
.super Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/LoadMoreManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$Companion;


# instance fields
.field private d:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;

.field private e:Z

.field private f:Z

.field private final i:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loadMoreHelper"

    const-string v4, "getLoadMoreHelper()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->e:Z

    .line 35
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$loadMoreHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$loadMoreHelper$2;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->m()V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->l()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/database/Cursor;)V
    .locals 10

    const v0, 0x7f0b01db

    .line 136
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.milk_drm_past_purchased_track)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v0, "dueDateLocal"

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "date"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->d:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;

    :cond_1
    if-eqz p1, :cond_2

    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->h(Z)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->h(Z)V

    :goto_1
    return-void
.end method

.method private final h(Z)V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->e:Z

    if-eq v0, p1, :cond_2

    .line 159
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->e:Z

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->e:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Z)V

    .line 164
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->e:Z

    if-eqz p1, :cond_1

    .line 165
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b_(I)V

    goto :goto_0

    .line 167
    :cond_1
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b_(I)V

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private final l()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    return-object v0
.end method

.method private final m()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchasedDrmTracks + page- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->l()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->j()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->l()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->e()I

    move-result v2

    .line 178
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->a(Landroid/content/Context;I)Lio/reactivex/Observable;

    move-result-object v1

    .line 182
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 202
    sget-object v3, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$2;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$2;

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 183
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 73
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_2

    .line 77
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->l()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/database/Cursor;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b(Landroid/database/Cursor;)V

    .line 80
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->f:Z

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "( orderStatus == \'02\' and drmProduct ==  \'1\' )"

    const/4 v0, 0x0

    .line 87
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;

    move-result-object p1

    const-string v0, "MySubscriptionQueryArgs.\u2026dedUri(rawQuery)).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "PurchasedTracksFragment_DRM"

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->f:Z

    return v0
.end method

.method protected f()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->e:Z

    return v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method protected i()I
    .locals 1

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    return v0
.end method

.method public k_()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->l()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->k_()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->c(Z)V

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->m()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->g()I

    move-result p2

    invoke-static {p0, p2, v1, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 49
    :goto_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;->a()Landroid/view/View;

    move-result-object v4

    const-string v5, "this.build()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, -0x186a0

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->d:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTrackHeaderBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    .line 54
    move-object v3, p2

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 57
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v4, v4, [I

    aput v5, v4, v0

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 56
    invoke-virtual {p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    .line 63
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v4, 0x7f020220

    invoke-direct {v3, v4, v1, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 60
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/16 p1, 0x66

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->f(I)V

    return-void
.end method
