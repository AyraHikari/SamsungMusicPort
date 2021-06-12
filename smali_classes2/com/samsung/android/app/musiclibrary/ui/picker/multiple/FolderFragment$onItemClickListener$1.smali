.class final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 1

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Z

    move-result p4

    invoke-virtual {p3, p2, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;->a(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;Landroid/support/v4/app/Fragment;)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string p3, "FolderDetailFragment"

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Z

    move-result p4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZZ)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "6104"

    goto :goto_0

    :cond_2
    const-string p1, "2610"

    .line 46
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
