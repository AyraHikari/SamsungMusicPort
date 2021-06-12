.class public final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 16
    new-instance v0, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->b:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Ui"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyInfo_MyInfoActivity | onCreate() - savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->b:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "MyInfo_MyInfoFragment |"

    .line 26
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;-><init>()V

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 27
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v2, 0x1020002

    invoke-virtual {p1, v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->b:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 33
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method
