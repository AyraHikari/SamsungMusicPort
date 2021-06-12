.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    iget v1, v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->c:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 604
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_1
    return-void
.end method
