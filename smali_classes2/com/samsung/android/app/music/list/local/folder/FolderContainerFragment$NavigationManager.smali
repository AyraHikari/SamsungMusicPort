.class public final Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NavigationManager"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    .line 218
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0022

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->c:I

    .line 220
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0021

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->d:I

    .line 222
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const v1, 0x7f13027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const v1, 0x7f13027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->f:Landroid/widget/HorizontalScrollView;

    .line 228
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0x7f130120

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "naviContainer"

    .line 229
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "naviContainer.findViewById<TextView>(R.id.root)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->d(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$$special$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$$special$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    .line 233
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    const-string v4, "ROOT_BUCKET_ID"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->d(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v4

    check-cast p1, Landroid/view/View;

    invoke-direct {v1, v3, v4, v2, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    const v2, 0x7f04008c

    const/4 v3, 0x0

    .line 349
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f130281

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/widget/TextView;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$addView$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "LayoutInflater.from(acti\u2026dView(this)\n            }"

    .line 352
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->f:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;Ljava/lang/String;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "UiList-FT"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " upTo() target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 277
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 284
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->g()V

    .line 285
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f130280

    .line 287
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;-><init>()V

    check-cast v1, Landroid/support/v4/app/Fragment;

    const-string v2, "FolderContainerFragment"

    .line 285
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const-string p1, "UiList-FT"

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upTo() completed cur folderInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dummy_path"

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "dummy_path"

    .line 390
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->c(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->c(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->d(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 394
    :cond_2
    invoke-static {p1, v0, v5, v3, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->e(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 398
    :cond_3
    invoke-static {p1, v1, v5, v3, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 400
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->f(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 410
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->d()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f130120

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "folderList[0].itemView.f\u2026ById<TextView>(R.id.root)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_4
    return-object v4
.end method

.method private final g()V
    .locals 12

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    const-string v2, "navigationItemContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    .line 307
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 447
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 448
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->b()I

    move-result v5

    .line 308
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_0
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 452
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f130281

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/view/View;

    .line 310
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_3
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 455
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v4, 0x1

    if-gez v4, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_4
    check-cast v5, Landroid/view/View;

    .line 312
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v10, "child"

    .line 313
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    .line 314
    invoke-virtual {v9, v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 315
    iget v10, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->d:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 317
    :cond_5
    invoke-virtual {v9, v11, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 318
    iget v10, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->c:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    const v9, 0x7f130282

    .line 321
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v9, "it"

    .line 322
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v9, v1, -0x1

    if-ne v4, v9, :cond_6

    const/16 v4, 0x8

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    move v4, v8

    goto :goto_3

    :cond_7
    return-void
.end method

.method private final h()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->f:Landroid/widget/HorizontalScrollView;

    .line 329
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$moveItemToLast$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager$moveItemToLast$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    .line 328
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 297
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    const-string v1, "ROOT_BUCKET_ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "bucketId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UiList-FT"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " moveInto() folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bucketId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 256
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->g()V

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->h()V

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f130280

    .line 264
    new-instance p3, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;-><init>()V

    check-cast p3, Landroid/support/v4/app/Fragment;

    const-string v0, "FolderContainerFragment"

    .line 262
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiList-FT"

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " getBucketId() bucketId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lastIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 10

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    .line 457
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 458
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    if-eqz v1, :cond_0

    .line 364
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    const-string v1, "navigationItemContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_2

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v0, "UiList-FT"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " restoreFolderPath() from last rootPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v1, "/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 375
    check-cast v1, Ljava/lang/Iterable;

    .line 465
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UiList-FT"

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "    restored path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bucketId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    new-instance v6, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    const-string v7, "bucketId"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-direct {v6, v4, v3, v0, v7}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->g()V

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->h()V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method public final f()V
    .locals 4

    const-string v0, "UiList-FT"

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " saveFolderPath() | path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 468
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "folder_info"

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getUserVisibleHint()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "UiList-FT"

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " onBackPressed() handled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRoot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " userVisibleHint: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " bucketId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
