.class public final Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 5

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0x7f130120

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "navigationContainer.findViewById<View>(R.id.root)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const v1, 0x7f13027f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "navigationContainer.find\u2026ewGroup>(R.id.navigation)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 451
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 452
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(index)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 5

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0x7f130120

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "navigationContainer.findViewById<View>(R.id.root)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const v1, 0x7f13027f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "navigationContainer.find\u2026ewGroup>(R.id.navigation)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 447
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 448
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(index)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
