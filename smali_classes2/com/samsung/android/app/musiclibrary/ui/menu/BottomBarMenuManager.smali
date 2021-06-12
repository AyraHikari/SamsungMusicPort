.class public final Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;,
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$Companion;


# instance fields
.field private final b:Landroid/support/v4/app/FragmentActivity;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

.field private final e:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/Menu;Landroid/support/v7/view/ActionMode;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "menu"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mode"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->e:Landroid/support/v4/app/Fragment;

    .line 35
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->b:Landroid/support/v4/app/FragmentActivity;

    .line 36
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->b:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_container:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.findViewById(R.id.bottom_bar_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c:Landroid/view/ViewGroup;

    .line 43
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v0

    const-string v1, "BottomBarMenuManager"

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "menuSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 45
    invoke-static {v12, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 488
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->b()I

    move-result v2

    .line 45
    invoke-interface {v9, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 47
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v12, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 48
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 49
    check-cast v1, Ljava/lang/Iterable;

    .line 491
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/MenuItem;

    const-string v0, "menuItem"

    .line 50
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->menu_group_bottom_bar:I

    if-ne v0, v1, :cond_2

    const-string v0, "BottomBarMenuManager"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BottomBar menuItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 54
    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 55
    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 57
    invoke-interface {v9, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 59
    iget-object v2, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 60
    sget v3, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_bottom_bar_item:I

    iget-object v4, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const-string v2, "this"

    .line 61
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 64
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_item_icon:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_item_title:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    new-instance v16, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;

    move-object/from16 v0, v16

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move-object v12, v5

    move-object/from16 v5, p4

    move v10, v6

    move-object/from16 v6, p3

    move-object v11, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;-><init>(Landroid/view/MenuItem;Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/Menu;Landroid/support/v7/view/ActionMode$Callback;Landroid/support/v7/view/ActionMode;Landroid/util/SparseArray;)V

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;-><init>(Landroid/view/MenuItem;Landroid/view/View;)V

    invoke-virtual {v14, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v11, v7

    .line 85
    invoke-interface {v11}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {v14, v0, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_2
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 88
    :cond_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    invoke-direct {v0, v9, v14}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;-><init>(Landroid/view/Menu;Landroid/util/SparseArray;)V

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->d:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    const-string v0, "BottomBarMenuManager"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor bottomBarMenuCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->e:Landroid/support/v4/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/view/Menu;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->d:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    check-cast v0, Landroid/view/Menu;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "BottomBarMenuManager"

    const-string v1, "onDestroy()"

    .line 97
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
