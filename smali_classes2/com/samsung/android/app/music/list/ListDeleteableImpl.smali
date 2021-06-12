.class public Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.super Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.source "SourceFile"


# instance fields
.field private final async:Z

.field private final checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final idType:I

.field private final recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;II)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;IIZ)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput p3, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->idType:I

    iput-boolean p4, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->async:Z

    .line 21
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 23
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    const-string p1, "deleteItems"

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "idType="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->idType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", async="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->async:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 19
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZ)V

    return-void
.end method

.method public static final synthetic access$getMActivity$p(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$showDeleteConfirmDialog(Lcom/samsung/android/app/music/list/ListDeleteableImpl;[J)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->showDeleteConfirmDialog([J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deleteItems()V
    .locals 3

    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->async:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->idType:I

    new-instance v2, Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;-><init>(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->deleteItems()V

    :goto_0
    return-void
.end method

.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UiList"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " deleteItemsInternal() | id count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", this: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;

    .line 56
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->ALL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    const/4 v3, 0x0

    .line 53
    invoke-direct {v0, p1, p2, v1, v3}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;-><init>(Landroid/app/Activity;[JLcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;Z)V

    new-array p1, v3, [Ljava/lang/Void;

    .line 58
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const-string p2, "recyclerViewableList.recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 60
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-nez p2, :cond_1

    move-object p1, v2

    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_2
    return-void
.end method

.method public getDeleteItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v0

    return v0
.end method

.method public getDeleteItemIds()[J
    .locals 3

    const-string v0, "UiList"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeleteItemIds() idType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->idType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", checkableList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->idType:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v0

    return-object v0
.end method
