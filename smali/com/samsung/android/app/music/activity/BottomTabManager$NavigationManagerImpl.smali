.class final Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/navigate/NavigationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/BottomTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NavigationManagerImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BottomTabManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getNavigableImpls()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 652
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/navigate/Navigable;

    .line 596
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/navigate/Navigable;->a(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->c(Lcom/samsung/android/app/music/activity/BottomTabManager;)I

    move-result p1

    return p1
.end method

.method public navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 16

    move-object/from16 v10, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v11, p5

    .line 540
    iget-object v0, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_0
    const v0, 0x10001

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v7, v0, :cond_3

    .line 543
    iget-object v0, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Lcom/samsung/android/app/music/activity/BottomTabManager;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    iget-object v4, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/activity/BottomTabManager;->c(Lcom/samsung/android/app/music/activity/BottomTabManager;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "it.childFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 546
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 548
    :cond_1
    iget-object v0, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/main/MainActivity;->dismissFullPlayer(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "Navi"

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationManager::navigate() failed. listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    if-eqz v11, :cond_4

    .line 553
    iget-object v0, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->c(Lcom/samsung/android/app/music/activity/BottomTabManager;)I

    move-result v0

    :goto_1
    move v12, v0

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a(I)I

    move-result v0

    goto :goto_1

    .line 554
    :goto_2
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    invoke-static {v0, v12}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v0

    if-nez v11, :cond_5

    .line 556
    iget-object v3, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v3, v12}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;I)V

    .line 557
    :cond_5
    iget-object v3, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-virtual {v3, v12, v11}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(IZ)V

    .line 559
    iget-object v3, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Lcom/samsung/android/app/music/activity/BottomTabManager;)Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v13, v3

    goto :goto_3

    :cond_6
    iget-object v3, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d(Lcom/samsung/android/app/music/activity/BottomTabManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v13, v0

    .line 560
    :goto_3
    instance-of v0, v13, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v13

    :goto_4
    move-object v14, v1

    check-cast v14, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    if-eqz v14, :cond_b

    .line 636
    invoke-virtual {v14}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 562
    move-object v1, v10

    check-cast v1, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;

    .line 563
    iget-object v1, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/main/MainActivity;->dismissFullPlayer(Z)V

    .line 564
    iget-object v1, v10, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getNavigableImpls()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 638
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/app/music/navigate/Navigable;

    move-object v0, v15

    move-object v1, v13

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 565
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/navigate/Navigable;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "Navi"

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavigationManager::navigate() handled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", listType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyword="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", designatedTabId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez v0, :cond_c

    const-string v0, "Navi"

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationManager::navigate() failed. listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", designatedTabId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 640
    :cond_a
    new-instance v15, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v13

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_5

    :cond_b
    const-string v0, "Navi"

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationManager::navigate() failed. listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", designatedTabId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", containerFg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method
