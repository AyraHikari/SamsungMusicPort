.class public final Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/NavigationTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field final synthetic b:Lcom/samsung/android/app/music/navigate/NaviData;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/navigate/NaviData;Landroid/content/Intent;Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/navigate/NaviData;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->d:Lcom/samsung/android/app/music/main/MainActivity;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->d:Lcom/samsung/android/app/music/main/MainActivity;

    iget-object p1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/navigate/NaviData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->a()I

    move-result v2

    iget-object p1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/navigate/NaviData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->b()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/navigate/NaviData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->c()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/navigate/NaviData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->d()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/main/MainActivity;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/app/music/main/NavigationTask$handleNaviIntent$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
