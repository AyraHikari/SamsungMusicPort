.class public Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$Companion;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-void
.end method

.method private final a(ILandroid/util/SparseBooleanArray;I)[J
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->d(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->c(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->b(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILandroid/util/SparseBooleanArray;I)[J
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a(ILandroid/util/SparseBooleanArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/util/SparseBooleanArray;I)[J
    .locals 6

    .line 72
    new-array p2, p2, [J

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 77
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    aput-wide v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .locals 7

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public a(I)[J
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a(ILandroid/util/SparseBooleanArray;I)[J

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 6

    const-string v0, "checkedItemPositions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 91
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 93
    new-array p2, p2, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 95
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v4

    aput-wide v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.TrackAdapter<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->b(Landroid/util/SparseBooleanArray;I)[J

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method protected final c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method protected final c(Landroid/util/SparseBooleanArray;I)[J
    .locals 1

    const-string v0, "checkedItemPositions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->b(Landroid/util/SparseBooleanArray;I)[J

    move-result-object p1

    return-object p1
.end method

.method protected final d(Landroid/util/SparseBooleanArray;I)[J
    .locals 7

    const-string v0, "checkedItemPositions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "source_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const-string v0, "source_id"

    .line 120
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 124
    new-array p2, p2, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 126
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 128
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "CheckableListImpl"

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCheckedItemSourceIds() count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const-string p1, "LifeCycle: "

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fg="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRemoving="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", c.count="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", c.moveToFirst="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 117
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w_()I
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    .line 41
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter<*>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
