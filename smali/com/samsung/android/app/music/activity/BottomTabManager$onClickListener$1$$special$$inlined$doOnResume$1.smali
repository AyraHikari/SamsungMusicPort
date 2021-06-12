.class public final Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field final synthetic b:Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;

.field final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->c:Landroid/view/View;

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "BottomTabManager"

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->c:Landroid/view/View;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->c:Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f13034c

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 672
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f13034f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
