.class public final Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MainActivity;->selectTab(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field final synthetic b:Lcom/samsung/android/app/music/main/MainActivity;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/main/MainActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MainActivity;

    iput p3, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->c:I

    iput p4, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->d:I

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget p1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->c:I

    if-nez p1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MainActivity;->access$get_bottomTabManager$p(Lcom/samsung/android/app/music/main/MainActivity;)Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    goto :goto_0

    .line 666
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 667
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MainActivity;->access$get_bottomTabManager$p(Lcom/samsung/android/app/music/main/MainActivity;)Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->c:I

    iget v1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->selectTab(II)V

    .line 653
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
