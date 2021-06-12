.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FolderDeleteableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    .line 457
    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f0d0021

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;)I
    .locals 0

    .line 456
    iget p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b:I

    return p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;Landroid/app/Activity;[J)V
    .locals 0

    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->deleteItemsInternal(Landroid/app/Activity;[J)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;[J)Z
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->showDeleteConfirmDialog([J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;)Landroid/app/Activity;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public deleteItems()V
    .locals 7

    const/4 v0, 0x0

    .line 476
    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b:I

    .line 477
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected onCreateDialogMessage([J)Ljava/lang/String;
    .locals 6

    .line 462
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0021

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->getDeleteItemCount()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->getDeleteItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 464
    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b:I

    if-lez v0, :cond_2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d001f

    .line 467
    iget v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 468
    iget v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 465
    invoke-virtual {p1, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method
