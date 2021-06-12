.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$1;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->c()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 67
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data NOT LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
    .locals 2

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    const-string v1, "bucket_display_name"

    .line 56
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    const-string v1, "_data"

    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->b()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 40
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const p2, 0x7f1000fd

    .line 41
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    const p2, 0x7f1005e5

    .line 42
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 47
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const p2, 0x7f0b02b4

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->c(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
