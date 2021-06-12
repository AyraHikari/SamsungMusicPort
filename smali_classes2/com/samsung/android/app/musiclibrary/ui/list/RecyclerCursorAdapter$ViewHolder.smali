.class public Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final animateViewLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final animateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public checkBox:Landroid/widget/CheckBox;

.field public final hasCheckBox:Z

.field public final hasPrivateTag:Z

.field public final hasReorder:Z

.field public final menuItemButtonGuideLine:Landroid/view/View;

.field public final more:Landroid/view/View;

.field public privateIcon:Landroid/widget/ImageView;

.field public final radioButton:Landroid/widget/RadioButton;

.field public reorderView:Landroid/view/View;

.field public final textView1:Landroid/widget/TextView;

.field public final textView2:Landroid/widget/TextView;

.field public final textView3:Landroid/widget/TextView;

.field public final thumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 899
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->private_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasPrivateTag:Z

    .line 907
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_stub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 908
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasCheckBox:Z

    .line 911
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->reorder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasReorder:Z

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    .line 923
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "adapter.fragment.resources"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v3

    if-lez p3, :cond_4

    .line 926
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getOnItemClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    :cond_4
    if-lez p3, :cond_5

    .line 930
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getOnItemLongClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 931
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    :cond_5
    if-lez p3, :cond_6

    .line 934
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getOnThumbnailClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 935
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnThumbnailClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 938
    :cond_6
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->hasHeaderView(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 939
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 942
    :cond_7
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text1:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    .line 943
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getText1ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v7

    if-eq v7, v5, :cond_9

    .line 944
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getText1ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v7

    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_8
    move-object v4, v6

    .line 942
    :cond_9
    :goto_4
    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    .line 948
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text2:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v4, :cond_c

    .line 949
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getText2ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    if-eq v8, v5, :cond_a

    .line 950
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getText2ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    invoke-static {v0, v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 952
    :cond_a
    iget v8, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Index:I

    if-eq v8, v5, :cond_b

    const/4 v8, 0x0

    goto :goto_5

    :cond_b
    const/16 v8, 0x8

    :goto_5
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_c
    move-object v4, v6

    .line 948
    :goto_6
    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .line 955
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text3:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_f

    .line 956
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getText3ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    if-eq v8, v5, :cond_d

    .line 957
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getText3ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    invoke-static {v0, v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 959
    :cond_d
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Index:I

    if-eq v0, v5, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_f
    move-object v4, v6

    .line 955
    :goto_8
    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    .line 962
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 964
    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdIndex:I

    if-ne v4, v5, :cond_11

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getThumbnailFullUriIndex$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v4

    if-eq v4, v5, :cond_10

    goto :goto_9

    .line 968
    :cond_10
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 969
    move-object v0, v6

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    goto :goto_a

    .line 965
    :cond_11
    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    goto :goto_a

    .line 972
    :cond_12
    move-object v0, v6

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 975
    :goto_a
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->radio:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 978
    instance-of v0, p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    if-eqz v0, :cond_13

    .line 979
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getAnimateViews()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1310
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 979
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->addAnimateView(Landroid/view/View;)V

    goto :goto_b

    .line 983
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getListItemMenuable()Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 984
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->more:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    .line 985
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_item_more_menu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    .line 986
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initMore(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    goto :goto_c

    .line 988
    :cond_14
    check-cast v6, Landroid/view/View;

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    .line 989
    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    .line 992
    :goto_c
    invoke-static {v3}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-ne p3, v1, :cond_15

    .line 995
    iget-object p3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p2}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 996
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$5;

    invoke-direct {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$5;-><init>(Landroid/view/View;)V

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1006
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getOnGenericMotionListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View$OnGenericMotionListener;

    move-result-object p1

    .line 1007
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;

    invoke-direct {p3, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;-><init>(Landroid/view/View$OnGenericMotionListener;Landroid/content/Context;)V

    check-cast p3, Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_15
    return-void
.end method

.method private final getClickView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1054
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getClickableView()Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1055
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getClickableView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    goto :goto_1

    .line 1057
    :cond_2
    sget p2, Lcom/samsung/android/app/musiclibrary/R$id;->click_area:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1058
    sget p2, Lcom/samsung/android/app/musiclibrary/R$id;->click_area:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.click_area)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1062
    :cond_3
    sget p2, Lcom/samsung/android/app/musiclibrary/R$drawable;->mu_ripple_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method private final initMore(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;)V"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private final initOnThumbnailClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1072
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnThumbnailClickListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnThumbnailClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic menuItemButtonGuideLine$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final addAnimateView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final clearAll()V
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected getContentDescription()Ljava/lang/CharSequence;
    .locals 12

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->b(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->b(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->b(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    check-cast v2, Ljava/lang/CharSequence;

    return-object v2
.end method

.method public final getContentDescription$musicLibrary_release()Ljava/lang/CharSequence;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getClickView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnClickListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final initOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getClickView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnLongClickListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnLongClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
