.class final Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 759
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    .line 760
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 761
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 762
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 763
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a()Landroid/support/v4/app/Fragment;

    move-result-object p1

    const-string p2, "BrowseLauncher.fragment(\u2026          }.newFragment()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/support/v4/app/Fragment;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 757
    check-cast p3, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 6

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->b(Lcom/samsung/android/app/music/list/local/HeartFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0b00de

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->c(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0b03ba

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 750
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p2

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    iget-object v1, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 676
    iget-object v2, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 677
    :cond_1
    iget-object v3, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(IZ)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 678
    :cond_2
    iget-object v3, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    sparse-switch v1, :sswitch_data_0

    const-string v0, "UiList"

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type clicked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 722
    :sswitch_0
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v0, "parentFragment!!"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/music/list/local/ComposerDetailFragment;->a:Lcom/samsung/android/app/music/list/local/ComposerDetailFragment$Companion;

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/music/list/local/ComposerDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ComposerDetailFragment;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v14

    move-object v14, v0

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 700
    :sswitch_1
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    iget-object v1, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/music/list/local/HeartFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "folder_option"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    const/4 v3, 0x0

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_9

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 706
    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    const v7, 0x10007

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_9

    .line 707
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 708
    iget-object v1, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/music/list/local/HeartFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1754
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "editor"

    .line 1755
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-static {v4, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "folder_info"

    .line 710
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1756
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_8

    .line 712
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 713
    invoke-interface {v0, v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    goto/16 :goto_2

    .line 712
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.TabControllable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_9
    move-object v0, v6

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;

    .line 715
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-nez v12, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    const-string v0, "parentFragment!!"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a:Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;

    invoke-virtual {v0, v2, v10}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v14

    move-object v14, v0

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 719
    :sswitch_2
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-nez v12, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    const-string v0, "parentFragment!!"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a:Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/GenreDetailFragment;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v14

    move-object v14, v0

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 682
    :sswitch_3
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-nez v12, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_c
    const-string v0, "parentFragment!!"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;->a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v14

    move-object v14, v0

    .line 681
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 693
    :sswitch_4
    iget-object v1, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->b(I)I

    move-result v0

    .line 695
    iget-object v1, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-nez v12, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    const-string v1, "parentFragment!!"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    sget-object v1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v10, v0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v14

    move-object v14, v0

    .line 694
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 688
    :sswitch_5
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_e
    const-string v1, "parentFragment!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sget-object v7, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v14

    move-object v12, v0

    move-object v14, v1

    .line 687
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 738
    :sswitch_6
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    const-string v1, "parentFragment!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x5a

    .line 739
    invoke-direct {v6, v1, v2, v10}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 737
    invoke-direct {v6, v14, v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    .line 726
    :sswitch_7
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_10
    const-string v0, "parentFragment!!"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 727
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 725
    invoke-direct {v6, v14, v7, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    .line 732
    :sswitch_8
    iget-object v0, v6, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_11
    const-string v0, "parentFragment!!"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x6e

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 733
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 731
    invoke-direct {v6, v14, v7, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_8
        0x55 -> :sswitch_7
        0x66 -> :sswitch_6
        0x10002 -> :sswitch_5
        0x10003 -> :sswitch_4
        0x10004 -> :sswitch_3
        0x10006 -> :sswitch_2
        0x10007 -> :sswitch_1
        0x10008 -> :sswitch_0
    .end sparse-switch
.end method
