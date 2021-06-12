.class public final Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

.field private final b:Landroid/content/SharedPreferences;

.field private c:I

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->e:Ljava/lang/String;

    .line 23
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p2, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p1, p2, v1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/view/MenuItem;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/Menu;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->b:Landroid/content/SharedPreferences;

    const-string v1, "folder_option"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    if-eqz p1, :cond_4

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->e:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1305e0

    .line 40
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 42
    iget v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    if-ne v4, v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f1305e1

    .line 46
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 45
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a(Landroid/view/MenuItem;Z)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    const v1, 0x7f1305e2

    if-eqz v0, :cond_3

    .line 51
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast v3, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a(Landroid/view/MenuItem;Z)V

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    if-eqz v0, :cond_4

    .line 54
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a(Landroid/view/MenuItem;Z)V

    :cond_4
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-nez p2, :cond_0

    .line 31
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const v0, 0x7f140021

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 67
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 87
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v2, "fragment.activity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :pswitch_1
    iput v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->b:Landroid/content/SharedPreferences;

    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder_option"

    .line 79
    iget v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    .line 81
    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    .line 80
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a(I)V

    const-string p1, "UiList"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onOptionSelected: view as tree"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.folder.FolderContainerFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :pswitch_2
    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->b:Landroid/content/SharedPreferences;

    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 95
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder_option"

    .line 70
    iget v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    .line 72
    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->c:I

    .line 71
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a(I)V

    const-string p1, "UiList"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onOptionSelected: view as all"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.folder.FolderContainerFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x7f1305e0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
