.class final Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 6

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 64
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 66
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 67
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string p4, "parentFragment!!"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string p3, "parentFragment!!.parentFragment!!"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object p3, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a:Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
