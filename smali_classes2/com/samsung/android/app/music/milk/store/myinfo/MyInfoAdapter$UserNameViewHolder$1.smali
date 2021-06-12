.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 464
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 465
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/content/Context;)Z

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->b(Landroid/content/Context;)Z

    .line 472
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method
