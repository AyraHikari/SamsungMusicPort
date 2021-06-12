.class final Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BottomTabManager;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BottomTabManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "BottomTabManager"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
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

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager;

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    goto :goto_1

    .line 639
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1$$special$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;Landroid/view/View;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f13034f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
