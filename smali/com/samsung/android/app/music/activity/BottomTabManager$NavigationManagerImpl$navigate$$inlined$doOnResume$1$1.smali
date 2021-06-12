.class public final Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 604
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;

    .line 605
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;

    iget-object v1, v1, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/main/MainActivity;->dismissFullPlayer(Z)V

    .line 606
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;

    iget-object v1, v1, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getNavigableImpls()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 607
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/navigate/Navigable;

    .line 609
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v3, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->c:Landroid/support/v4/app/Fragment;

    .line 610
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget v4, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->d:I

    .line 611
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v5, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->e:Ljava/lang/String;

    .line 612
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v6, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->f:Ljava/lang/String;

    .line 613
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v7, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->g:Landroid/os/Bundle;

    .line 614
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-boolean v8, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->h:Z

    move-object v2, v0

    .line 608
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/app/music/navigate/Navigable;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Navi"

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavigationManager::navigate() handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", designatedTabId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->i:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Navi"

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationManager::navigate() failed. listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget v2, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", designatedTabId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget v2, v2, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl$navigate$$inlined$doOnResume$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_3
    return-void
.end method
