.class public final Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;

.field public static c:Z

.field public static d:Lkotlinx/coroutines/w1;

.field public static e:I

.field public static f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;


# instance fields
.field public final a:Lkotlin/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$d;->a:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$d;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Lkotlin/g;

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:I

    return v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/w1;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->d:Lkotlinx/coroutines/w1;

    return-object v0
.end method

.method public static final synthetic c(I)V
    .locals 0

    sput p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:I

    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/w1;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->d:Lkotlinx/coroutines/w1;

    return-void
.end method


# virtual methods
.method public final e()Lcom/samsung/android/app/music/l;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/l;

    return-object v0
.end method

.method public final f(Landroid/view/KeyEvent;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;->d()Lkotlin/u;

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->g(Landroid/view/KeyEvent;)V

    goto :goto_2

    .line 6
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f$a;->a(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;ZILjava/lang/Object;)V

    goto :goto_2

    .line 7
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->next()V

    goto :goto_2

    .line 8
    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/c;->A(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;)V

    goto :goto_2

    .line 9
    :cond_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->pause()V

    goto :goto_2

    .line 10
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;->b(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;Landroid/content/Context;)V

    goto :goto_2

    .line 11
    :cond_4
    :pswitch_4
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;->a(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;Landroid/content/Context;)V

    goto :goto_2

    .line 12
    :cond_5
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;->d()Lkotlin/u;

    .line 13
    :goto_1
    sput-boolean v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:Z

    .line 3
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;

    const-string v2, "MusicButton"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v2, 0x59

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 6
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$b;->a:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$b;

    invoke-static {v1, v3, p1, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;->j(Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;Landroid/view/View;Lkotlin/jvm/functions/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$c;->a:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$c;

    invoke-static {v1, v3, p1, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;->f(Lcom/samsung/android/app/musiclibrary/ui/widget/control/a;Landroid/view/View;Lkotlin/jvm/functions/a;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x680619ad

    if-eq v1, v2, :cond_1

    const v2, 0x7708a552

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_3

    return-void

    .line 3
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;

    const-string v2, "onReceive() keyEvent:"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;->c(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$a;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e()Lcom/samsung/android/app/music/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f(Landroid/view/KeyEvent;Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e()Lcom/samsung/android/app/music/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/l;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 8
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_6
    :goto_1
    return-void
.end method
